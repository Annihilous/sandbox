require "test_helper"

class SudokuBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sudoku_board = sudoku_boards(:one)
  end

  test "should get index" do
    get sudoku_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_sudoku_board_url
    assert_response :success
  end

  test "should create sudoku_board" do
    assert_difference("SudokuBoard.count") do
      post sudoku_boards_url, params: { sudoku_board: { grid_content: @sudoku_board.grid_content, grid_size: @sudoku_board.grid_size } }
    end

    assert_redirected_to sudoku_board_url(SudokuBoard.last)
  end

  test "should show sudoku_board" do
    get sudoku_board_url(@sudoku_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_sudoku_board_url(@sudoku_board)
    assert_response :success
  end

  test "should update sudoku_board" do
    patch sudoku_board_url(@sudoku_board), params: { sudoku_board: { grid_content: @sudoku_board.grid_content, grid_size: @sudoku_board.grid_size } }
    assert_redirected_to sudoku_board_url(@sudoku_board)
  end

  test "should destroy sudoku_board" do
    assert_difference("SudokuBoard.count", -1) do
      delete sudoku_board_url(@sudoku_board)
    end

    assert_redirected_to sudoku_boards_url
  end
end
