class DriversandcarsController < ApplicationController
  def index
    @cars = Car.pluck(:title, :id)
    @drivers = Driver.pluck(:name, :id)

    if params[:search_cars].present?
      @driver = Driver.includes(:cars).find(params[:search_cars])
    elsif params[:search_drivers].present?
      @car = Car.includes(:drivers).find(params[:search_drivers])
    end
  end
end
