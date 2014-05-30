class Category < ActiveRecord::Base
	attr_accessible :description, :image_url, :price, :title
	has_many :products
end
