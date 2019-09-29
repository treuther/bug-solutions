class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :bug_name
    end
  end
end
