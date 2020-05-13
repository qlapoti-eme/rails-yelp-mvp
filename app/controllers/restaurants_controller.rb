class RestaurantsController < ApplicationController
  
  def index
    @restaurant = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
