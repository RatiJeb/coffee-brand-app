# frozen_string_literal: true

# creates coffee ingredients table
class CreateCoffeeIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :coffee_ingredients do |t|
      t.string :name, limit: 255
    end
  end
end
