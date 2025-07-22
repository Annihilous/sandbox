class DropSudokuTables < ActiveRecord::Migration[7.2]
  def change
    drop_table "sudoku_boards"
    drop_table "sudoku_solvers"
  end
end
