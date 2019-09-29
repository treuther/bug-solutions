class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :active_ingredient
      t.string :description
      t.integer :user_id
    end
  end
end
