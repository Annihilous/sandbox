class CreateSudokuBoards < ActiveRecord::Migration[7.2]
  def change
    create_table :sudoku_boards do |t|
      t.integer :grid_size
      t.text :grid_content

      t.timestamps
    end
  end
end
