# frozen_string_literal: true

# coffee type ingredient model with fields
# references :coffee_type,          foreign_key: true
# references :coffee_ingredient,    foreign_key: true
class CoffeeTypeIngredient < ApplicationRecord
  belongs_to :coffee_type
  belongs_to :coffee_ingredient
end
