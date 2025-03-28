class SudokuBoard < ApplicationRecord
    require 'json'

    VALID_GRID_SIZES = [4, 5, 6, 7, 8, 9, 12, 16, 25]

    validates :grid_size, inclusion: { in: VALID_GRID_SIZES }

    before_create :generate_sudoku_grid
    
    def generate_sudoku_grid
        raise "Invalid grid size" unless VALID_GRID_SIZES.include?(grid_size)
    
        solved_grid = generate_solved_grid(grid_size)
        unsolved_grid = remove_values(solved_grid, grid_size)
        self.grid_content = unsolved_grid
    end

    def grid_content_to_array
        JSON.parse(grid_content).map do |row|
            row.map { |value| value == "null" ? nil : value }
        end
    rescue JSON::ParserError
        []
    end

    private
    
    def generate_solved_grid(size)
        base = (1..size).to_a
        grid = base.permutation.to_a.sample(size)
        grid.each_with_index do |row, index|
            row.each_with_index do |value, col_index|
                grid[index][col_index] = value
            end
        end
        grid
    end
    
    def remove_values(grid, size)
        grid = grid.flatten
        total_cells = grid.size
        num_to_remove = (total_cells * 0.5).to_i
    
        num_to_remove.times do
            random_index = rand(total_cells)
            grid[random_index] = 'null'
        end
    
        grid.each_slice(size).to_a
    end
end
