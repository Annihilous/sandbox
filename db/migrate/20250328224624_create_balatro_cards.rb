class CreateBalatroCards < ActiveRecord::Migration[7.2]
  def change
    create_table :balatro_cards do |t|
      t.integer :name
      t.integer :suit
      t.integer :chips
      t.integer :mult, default: 0, null: false
      t.integer :xmult, default: 0, null: false
      t.integer :trigger_count, default: 1, null: false
      t.boolean :is_debuffed, default: false, null: false

      t.timestamps
    end
  end
end
