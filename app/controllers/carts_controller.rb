class CartsController < ApplicationController
  def show
    @cart = Cart.find_by user_id: current_user.id
    @total_price = total_price
  end

  def total_price
    @cart = Cart.find_by user_id: current_user.id
    @cart.items.to_a.sum { |item| item.price }
  end
end
