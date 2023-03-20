# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create Restaurants
sottocasa = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
pizzarte = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")
davannis = Restaurant.create(name: "Davanni's Pizza & Hot Hoagies", address: "2500 Riverside Ave, Minneapolis, MN 55454")

# Create Pizzas
cheese = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pepperoni = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
hawaiian = Pizza.create(name: "Hawaiian", ingredients: "Dough, Tomato Sauce, Cheese, Ham, Pineapple")

# Create RestaurantPizzas
sottocasa_pizza1 = RestaurantPizza.create(restaurant: sottocasa, pizza: cheese, price: 12)
sottocasa_pizza2 = RestaurantPizza.create(restaurant: sottocasa, pizza: pepperoni, price: 15)
pizzarte_pizza1 = RestaurantPizza.create(restaurant: pizzarte, pizza: cheese, price: 14)
davannis_pizza1 = RestaurantPizza.create(restaurant: davannis, pizza: cheese, price: 10)
