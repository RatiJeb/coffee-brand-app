class CoffeeController < ApplicationController
  def index
    @result = CoffeeType.includes(:coffee_ingredients).all
    render json: @result.as_json
  end

  def show
    @result = CoffeeType.includes(:coffee_ingredients)
                        .find_by(id: params[:id])
    render json: @result.as_json
  end
end
