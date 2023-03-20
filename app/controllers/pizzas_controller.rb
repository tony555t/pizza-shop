class PizzasController < ApplicationController
    #get/piza
  def index  
    pizzas= Pizza.all
    render json: pizzas
  end


  end
    

end
class PizzasController < ApplicationController
    def index
      @pizzas = Pizza.all
      render json: @pizzas.as_json(only: [:id, :name, :ingredients])
    end
  end