class AddDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_number, :string
    add_column :products, :price, :decimal
  end
end
