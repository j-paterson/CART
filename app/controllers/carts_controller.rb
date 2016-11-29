class CartsController < ApplicationController
  def show
    @current_cart = self
    @order_items = Order.where(cart: @current_cart).first.order_items
  end
end
