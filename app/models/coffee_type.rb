# frozen_string_literal: true

# coffee type model with fields
# string      :name,            limit: 50
# string      :image_url
# integer     :calories
# string      :description,     limit: 255
class CoffeeType < ApplicationRecord
  has_many :coffee_type_ingredients, dependent: nil
  has_many :coffee_ingredients, through: :coffee_type_ingredients

  validates :name, :calories, :price, :image_url, presence: true
end
