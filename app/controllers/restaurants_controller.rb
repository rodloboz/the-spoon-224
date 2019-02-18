class RestaurantsController < ApplicationController
  # Fake DB
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    @category = params[:food_type]
    @restaurants = RESTAURANTS
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

  def create
    name = params[:name]
    address = params[:address]

    redirect_to restaurants_path
  end
end
