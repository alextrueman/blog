class DriversController < ApplicationController
  def index
    @drivers = Driver.includes(:cars)
  end

  def new
    @cars = Car.pluck(:title, :id)
  end

  def show
    @driver = Driver.includes(:cars).find(params[:id])
  end

  def create
    cars = Car.find(driver_params[:cars])
    @driver = Driver.new(driver_params.merge(cars: cars))

    @driver.save
    redirect_to @driver
  end

  private

  def driver_params
    params.require(:driver).permit(:name, :email, :birthday, cars: [])
  end
end
