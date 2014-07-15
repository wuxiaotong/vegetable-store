class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  belongs_to :user
  PAYMENT_TYPES = [ "现金支付", "银行卡转账", "支付宝转账"]
  validates :name, :address, presence: true
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
