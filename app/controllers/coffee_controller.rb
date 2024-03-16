# frozen_string_literal: true

# Coffee Controller
class CoffeeController < ApplicationController
  def index
    @result = CoffeeType.includes(:coffee_ingredients)
                        .all
                        .as_json
                        .map do |coffee|
      coffee['new_price'] = (coffee['price'].to_d * (100.0 - coffee['discounted_percent']) / 100.0).round(2) if coffee['discounted_percent'].present?
      coffee
    end
    render json: @result
  end

  def show
    @result = CoffeeType.includes(:coffee_ingredients)
                        .find_by(id: params[:id])
    render json: @result.as_json
  end
end
