class PizzasController < ApplicationController
    #get/piza
  def index  
    pizzas= Pizza.all
    render json: pizzas,status: :ok
  end
end

  