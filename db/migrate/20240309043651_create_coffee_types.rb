# frozen_string_literal: true

# creates coffee types table
class CreateCoffeeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :coffee_types do |t|
      t.string :name, limit: 50
      t.string :image_url
      t.integer :calories
      t.numeric :price, precision: 5, scale: 2
      t.integer :discounted_percent
      t.string :description, limit: 255
    end
  end
end
