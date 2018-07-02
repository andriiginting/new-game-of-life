module GameOfLife

  class Cell
    attr_reader :grid 
    def initialize
      @grid = Array.new
    end

    def minimal_column(col_index)
      if col_index - 1 >= 0
        minimal = col_index - 1
      else
        minimal = col_index
      end
      return minimal
    end

    def maximum_column(col_index)
      if col_index + 1 < grid[0].length
        max = col_index + 1
      else
        max = col_index
      end
      return max
    end

    def minimal_row(row_index)
      if row_index - 1 >= 0
        min = row_index - 1
      else
        min = row_index
      end
      return min
    end

    def calculate_neighbor(min_row, max_row, min_col, max_col, row_index, col_index)
      sum = 0
      for i in min_row..max_row 
        for j in min_col..max_col 
          sum += grid[i][j]
        end
      end

      return sum - grid[row_index][col_index]
    end
    
  end
end
