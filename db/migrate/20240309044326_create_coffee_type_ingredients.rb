# frozen_string_literal: true

# creates many to many coffee type ingredients
class CreateCoffeeTypeIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :coffee_type_ingredients do |t|
      t.references :coffee_type, foreign_key: true
      t.references :coffee_ingredient, foreign_key: true
    end
  end
end
