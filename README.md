## Pizza Restaurant API
This API allows users to access data about restaurants and pizzas, as well as create new restaurant pizzas.

## Models
The following relationships have been created for the models:

A Restaurant has many Pizzas through RestaurantPizza
A Pizza has many Restaurants through RestaurantPizza
A RestaurantPizza belongs to a Restaurant and belongs to a Pizza
The following models and migrations have been created:

Restaurant: contains information about a restaurant, including its name and address
Pizza: contains information about a pizza, including its name and ingredients
RestaurantPizza: contains information about a restaurant pizza, including its price, pizza_id, and restaurant_id
Validations
The RestaurantPizza model has been validated to ensure that it has a price between 1 and 30.

## Routes
The following routes have been set up:

GET /restaurants: Returns JSON data about all restaurants, including their id, name, and address.
GET /restaurants/:id: Returns JSON data about a single restaurant and its associated pizzas, including its id, name, address, and a list of pizzas that includes their id, name, and ingredients.
DELETE /restaurants/:id: Deletes a restaurant and its associated restaurant pizzas from the database.
GET /pizzas: Returns JSON data about all pizzas, including their id, name, and ingredients.
POST /restaurant_pizzas: Creates a new restaurant pizza that is associated with an existing pizza and restaurant. Accepts an object with the following properties in the body of the request: price, pizza_id, and restaurant_id. If the restaurant pizza is created successfully, sends back a response with the data related to the pizza. If not, returns a JSON error with appropriate HTTP status code.
Conclusion
The Pizza Restaurant API is a sample Rails application that implements a simple pizza ordering system.
It allows users to create restaurants, pizzas, and restaurant pizzas that link a particular pizza to a particular restaurant with a price.
The project is licensed under the MIT license, which means that it can be freely cloned and modified by anyone. If you have any questions or feedback about the project, feel free to reach out.

Author
[antony tula]

License
MIT