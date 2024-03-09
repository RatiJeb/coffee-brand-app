# frozen_string_literal: true

# coffee type model with fields
# string      :name,            limit: 50
# string      :image_url
# integer     :calories
# string      :description,     limit: 255
class CoffeeType < ApplicationRecord
  has_many :coffee_type_ingredients, foreign_key: :coffee_type_id
  has_many :coffee_ingredients, through: :coffee_type_ingredients

  validates_presence_of :name, :calories, :price, :image_url
end
