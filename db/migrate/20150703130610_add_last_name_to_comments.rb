class AddLastNameToComments < ActiveRecord::Migration
  def change
    add_column :comments, :last_name, :string
  end
end
