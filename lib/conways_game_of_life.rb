require './lib/cell.rb'

module GameOfLife
  class GameOfLife
    def run_game
    conway =Cell.new
    filename = "./"
    filename += ARGV[0]
    conway.create_pattern(filename)      
    end

    def print_next_generation(block_array)
      cells = Array.new(block_array.length){Array.new(block_array[0].length)}

    for i in 0..block_array.length - 1 do
      for j in 0..block_array[0].length - 1 do 
        if block_array[i][j] == 0
          cells[i][j] = " "
        else
          cells[i][j] = "x"
        end 
      end
    end

    for i in 0..block_array.length - 1 do
      puts cells[i].join(" ")
    end
    puts ""
    end

  end
end
