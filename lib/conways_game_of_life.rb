require './lib/cell.rb'
include GameOfLife

module GameOfLife
    def run_game
      conway =Cell.new

      if  ARGV.empty?
        puts "There is no argument"
        exit
      elsif !ARGV[0].include? ".txt"
        puts "Argument format invalid"
        exit
      end

      filename = "./"
      filename += ARGV[0]
      conway.create_pattern(filename)
       for i in 0..100 do
          conway.generate_next_pattern
          system "clear"
          print_next_generation(conway.grid)
          sleep(0.5)
      end  
    end

    def print_next_generation(block_array)
      cells = Array.new(block_array.length){Array.new(block_array[0].length)}

    for i in 0..block_array.length - 1 do
      for j in 0..block_array[0].length - 1 do 
        if block_array[i][j] == 0
          cells[i][j] = " "
        else
          cells[i][j] = "\u25A0"
        end 
      end
    end

    for i in 0..block_array.length - 1 do
      puts cells[i].join(" ")
    end
    puts ""
    end
end

run_game()

