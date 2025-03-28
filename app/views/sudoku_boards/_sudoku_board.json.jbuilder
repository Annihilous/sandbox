json.extract! sudoku_board, :id, :grid_size, :grid_content, :created_at, :updated_at
json.url sudoku_board_url(sudoku_board, format: :json)
