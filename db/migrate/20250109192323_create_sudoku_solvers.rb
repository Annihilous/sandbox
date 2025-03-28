class CreateSudokuSolvers < ActiveRecord::Migration[7.2]
  def change
    create_table :sudoku_solvers do |t|
      t.text :unsolved_grid

      t.timestamps
    end
  end
end
