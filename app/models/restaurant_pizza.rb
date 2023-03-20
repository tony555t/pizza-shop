class RestaurantPizza < ApplicationRecord
    belongs_to :restaurant
     belongs_to :pizza

     validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 30 }

end
