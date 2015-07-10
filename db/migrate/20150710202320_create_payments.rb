class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name
      t.string :comments

      t.timestamps null: false
    end
  end
end
