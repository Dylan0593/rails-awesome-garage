class FavouritesController < ApplicationController


  def index
    @favourites = Favourite.all
  end


  def create
    car = Car.find(params[:car_id])
    @favourite = Favourite.new
    @favourite.car = car

    if @favourite.save
      redirect_to car_path(car), notice: "Car favourited!"
    else
      render 'car/show', alert: "Could not favourite car."
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path
  end

end
