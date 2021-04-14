class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :price
      t.integer :capacity
      t.string :model

      t.timestamps
    end
  end
end
