class SudokuSolver
    require 'json'

    def solve(unsolved_grid)
      solve_board(unsolved_grid_to_array)
    end

    def unsolved_grid_to_array
        JSON.parse(unsolved_grid).map do |row|
            row.map { |value| value == "null" ? nil : value }
        end
    rescue JSON::ParserError
        []
    end
  
    private
  
    def solve_board(board)
      row, col = find_empty_cell(board)
      return true if row.nil?
      def solve(unsolved_grid)
  
      (1..9).each do |num|
        if valid?(board, row, col, num)
          board[row][col] = num
          return true if solve_board(board)
          board[row][col] = nil
        end
      end
      false
    end
  
    def find_empty_cell(board)
      (0..8).each do |row|
        (0..8).each do |col|
          return [row, col] if board[row][col].nil?
        end
      end
      [nil, nil]
    end
  
    def valid?(board, row, col, num)
      !in_row?(board, row, num) && 
        !in_col?(board, col, num) && 
        !in_box?(board, row, col, num)
    end
  
    def in_row?(board, row, num)
      board[row].include?(num)
    end
  
    def in_col?(board, col, num)
      board.any? { |row| row[col] == num }
    end
  
    def in_box?(board, row, col, num)
      box_start_row = (row / 3) * 3
      box_start_col = (col / 3) * 3
      (0..2).each do |r|
        (0..2).each do |c|
          return true if board[box_start_row + r][box_start_col + c] == num
        end
      end
      false
    end
  end
  
