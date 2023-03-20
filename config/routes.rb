
Rails.application.routes.draw do
  # GET /restaurants
  get '/restaurants', to: 'restaurants#index'

  # GET /restaurants/:id
  get '/restaurants/:id', to: 'restaurants#show'

  # DELETE /restaurants/:id
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # GET /pizzas
  get '/pizzas', to: 'pizzas#index'

  # POST /restaurant_pizzas
 # post '/restaurant_pizzas', to: 'restaurant_pizzas#create'
end