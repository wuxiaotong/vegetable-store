class Order < ActiveRecord::Base
  def add_line_items_from_cart(cart)
  	cart.line_items.each do |item|
  		item.cart_id = nil
  		line_items << item
  	end
  end
  has_many :line_items, dependent: :destroy
  PAYMENT_TYPES = [ "Check", "Credit cart", "Purchase order"]

end
