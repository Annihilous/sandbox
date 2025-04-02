class CreateBalatroCardBalatroHands < ActiveRecord::Migration[7.2]
  def change
    create_table :balatro_card_balatro_hands do |t|
      t.references :balatro_card, null: false, foreign_key: true
      t.references :balatro_hand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
