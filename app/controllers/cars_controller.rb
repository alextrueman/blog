class CarsController < ApplicationController
  def index
    @cars = Car.includes(:drivers)
  end

  def new
    @drivers = Driver.pluck(:name, :id)
  end

  def show
    @car = Car.includes(:drivers).find(params[:id])
  end

  def create
    drivers = Driver.find(car_params[:drivers])
    @car = Car.new(car_params.merge(drivers: drivers))

    @car.save
    ActionCable.server.broadcast 'car_creates_channel', id: @car.id, title: @car.title, car_type: @car.car_type, color: @car.color
    redirect_to @car
  end

  private

  def car_params
    params.require(:car).permit(:title, :car_type, :color, :image, drivers: [])
  end
end
