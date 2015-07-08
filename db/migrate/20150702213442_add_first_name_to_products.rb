class AddFirstNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :first_name, :string
  end
end
