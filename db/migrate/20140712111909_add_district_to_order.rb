class AddDistrictToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :district, :string
  end
end
