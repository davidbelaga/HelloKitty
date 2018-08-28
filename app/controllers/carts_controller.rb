class CartsController < ApplicationController
  def show
    @cart = current_cart
    @total_price = total_price
  end

  def add_item
    @cart = current_cart
    @cart << Item.find(params[:id])
    flash.now[:notice] = "Item added to your cart"
    redirect_to items_path
  end

  def total_price
    @cart = current_cart
    @cart.items.to_a.sum { |item| item.price }
  end

  def current_cart
    Cart.find_by user_id: current_user.id
  end
end
