require "application_system_test_case"

class SudokuBoardsTest < ApplicationSystemTestCase
  setup do
    @sudoku_board = sudoku_boards(:one)
  end

  test "visiting the index" do
    visit sudoku_boards_url
    assert_selector "h1", text: "Sudoku boards"
  end

  test "should create sudoku board" do
    visit sudoku_boards_url
    click_on "New sudoku board"

    fill_in "Grid content", with: @sudoku_board.grid_content
    fill_in "Grid size", with: @sudoku_board.grid_size
    click_on "Create Sudoku board"

    assert_text "Sudoku board was successfully created"
    click_on "Back"
  end

  test "should update Sudoku board" do
    visit sudoku_board_url(@sudoku_board)
    click_on "Edit this sudoku board", match: :first

    fill_in "Grid content", with: @sudoku_board.grid_content
    fill_in "Grid size", with: @sudoku_board.grid_size
    click_on "Update Sudoku board"

    assert_text "Sudoku board was successfully updated"
    click_on "Back"
  end

  test "should destroy Sudoku board" do
    visit sudoku_board_url(@sudoku_board)
    click_on "Destroy this sudoku board", match: :first

    assert_text "Sudoku board was successfully destroyed"
  end
end
