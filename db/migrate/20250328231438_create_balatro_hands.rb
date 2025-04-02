class CreateBalatroHands < ActiveRecord::Migration[7.2]
  def change
    create_table :balatro_hands do |t|
      t.string :name
      t.references :balatro_hand_type, null: false, foreign_key: true
      t.integer :chip_total

      t.timestamps
    end
  end
end
