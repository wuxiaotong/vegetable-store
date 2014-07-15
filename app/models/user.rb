class User < ActiveRecord::Base
  # It will auto generate weixin token and secret
  include WeixinRailsMiddleware::AutoGenerateWeixinTokenSecretKey
  validates :name, presence: true, uniqueness: true
  has_secure_password
  after_destroy :ensure_an_admin_remains
  has_many :orders, dependent: :destroy
  private
    def ensure_an_admin_remains
    	if User.count.zero?
    		raise "Can't delete last user"
    	end
    end
end
