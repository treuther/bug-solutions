class CreateProductBugs < ActiveRecord::Migration
  def change
    create_table :product_bugs do |t|
      t.integer :product_id
      t.integer :bug_id
    end
  end
end
