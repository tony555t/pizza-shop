class RestaurantsController < ApplicationController
    def index
      restaurants = Restaurant.all
  
      render json: restaurants.as_json(only: [:id, :name, :address]), status: :ok
    end
  end
  