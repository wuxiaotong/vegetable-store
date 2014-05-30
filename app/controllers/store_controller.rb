class StoreController < ApplicationController
  def index
  	@cart = current_cart
  	@categories = Category.all
  	@product = Product.order(:title)
  end
  def product_info
  	@cart = current_cart
  	@line_item = LineItem.new
    @product = Product.find(params[:id])
  end
end
