class AddPhonenumberToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :phonenumber, :integer
  end
end
