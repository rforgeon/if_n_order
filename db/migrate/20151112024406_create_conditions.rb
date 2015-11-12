class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :name
      t.string :item
      t.string :key
      t.integer :order_count
      t.integer :cur_count
      t.references :user, index: true

      t.timestamps
    end
  end
end
