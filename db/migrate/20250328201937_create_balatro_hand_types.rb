class CreateBalatroHandTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :balatro_hand_types do |t|
      t.string :name
      t.integer :mult_base
      t.integer :mult_increase
      t.integer :chip_base
      t.integer :chip_increase

      t.timestamps
    end
  end
end
