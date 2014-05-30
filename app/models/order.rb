class Order < ActiveRecord::Base
  PAYMENT_TYPES = [ "Check", "Credit cart", "Purchase order"]
end
