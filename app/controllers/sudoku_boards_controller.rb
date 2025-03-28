class SudokuBoardsController < ApplicationController
  before_action :set_sudoku_board, only: %i[ show edit update destroy ]

  # GET /sudoku_boards or /sudoku_boards.json
  def index
    @sudoku_boards = SudokuBoard.all
  end

  # GET /sudoku_boards/1 or /sudoku_boards/1.json
  def show
  end

  # GET /sudoku_boards/new
  def new
    @sudoku_board = SudokuBoard.new
  end

  # GET /sudoku_boards/1/edit
  def edit
  end

  # POST /sudoku_boards or /sudoku_boards.json
  def create
    @sudoku_board = SudokuBoard.new(sudoku_board_params)

    respond_to do |format|
      if @sudoku_board.save
        format.html { redirect_to @sudoku_board, notice: "Sudoku board was successfully created." }
        format.json { render :show, status: :created, location: @sudoku_board }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sudoku_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sudoku_boards/1 or /sudoku_boards/1.json
  def update
    respond_to do |format|
      if @sudoku_board.update(sudoku_board_params)
        format.html { redirect_to @sudoku_board, notice: "Sudoku board was successfully updated." }
        format.json { render :show, status: :ok, location: @sudoku_board }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sudoku_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sudoku_boards/1 or /sudoku_boards/1.json
  def destroy
    @sudoku_board.destroy!

    respond_to do |format|
      format.html { redirect_to sudoku_boards_path, status: :see_other, notice: "Sudoku board was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sudoku_board
      @sudoku_board = SudokuBoard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sudoku_board_params
      params.require(:sudoku_board).permit(:grid_size, :grid_content)
    end
end
