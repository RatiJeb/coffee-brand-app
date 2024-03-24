class CartController < ApplicationController
  def index
    @result = CartItem.all
    render json: @result
  end
end
