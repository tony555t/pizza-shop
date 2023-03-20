class RestaurantsController < ApplicationController
    def index
      restaurants = Restaurant.all
      render json: restaurants, status: :ok
    end
  
    def show
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        render json: restaurant.as_json(include: :pizzas), status: :ok
      else
        render json: { error: "Restaurant not found" }, status: :not_found
      end
    end
  
    def destroy
      restaurant = Restaurant.find_by(id: params[:id])
      if restaurant
        restaurant.restaurant_pizzas.destroy_all
        restaurant.destroy
        head :no_content
      else
        render json: { error: "Restaurant not found" }, status: :not_found
      end
    end
  end
  