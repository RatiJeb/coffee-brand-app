# frozen_string_literal: true

# coffee ingredient model with fields
# string :name
class CoffeeIngredient < ApplicationRecord
  has_many :coffee_type_ingredients, foreign_key: :coffee_ingredient_id
  has_many :coffee_types, through: :coffee_type_ingredients

  validates :name, presence: true, length: { minimum: 3, maximum: 255 }
end
