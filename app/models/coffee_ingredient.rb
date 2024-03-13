# frozen_string_literal: true

# coffee ingredient model with fields
# string :name
class CoffeeIngredient < ApplicationRecord
  has_many :coffee_type_ingredients, dependent: nil
  has_many :coffee_types, through: :coffee_type_ingredients, dependent: nil

  validates :name, presence: true, length: { minimum: 3, maximum: 255 }
end
