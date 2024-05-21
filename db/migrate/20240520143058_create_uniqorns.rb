class CreateUniqorns < ActiveRecord::Migration[7.1]
  def change
    create_table :uniqorns do |t|
      t.string :name
      t.integer :age
      t.boolean :can_fly
      t.string :color
      t.integer :speed
      t.integer :price_per_day

      t.timestamps
    end
  end
end
