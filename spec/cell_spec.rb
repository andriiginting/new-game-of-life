require './lib/cell'

describe "cell" do
  it  "can calculate size of an array" do
    array_cell = Array.new
    expect(array_cell.empty?).to be true
  end

  it "can check of each cell" do
    test_cell = GameOfLife::Cell.new
    test_cell.grid
    (0...7).each do |row|
      row = Array.new
        (0...7).each do |cell|
          row.push(0)
        end
        test_cell.grid.push(row)
      end
      expect(7).to eq(test_cell.minimal_column(8))
  end

  it "can check minimum coll with zero params" do
    test_cell = GameOfLife::Cell.new
    test_cell.grid
    (0...7).each do |row|
      row = Array.new
        (0...7).each do |cell|
          row.push(0)
        end
        test_cell.grid.push(row)
      end
      expect(0).to eq(test_cell.minimal_column(0))
  end


  it "can check maximum coll with zero params" do
    test_cell = GameOfLife::Cell.new
    test_cell.grid
    (0...7).each do |row|
      row = Array.new
        (0...7).each do |cell|
          row.push(0)
        end
        test_cell.grid.push(row)
      end
      expect(0).to eq(test_cell.minimal_column(0))
  end

  it "can check minimum row with zero params" do
    test_cell = GameOfLife::Cell.new
    test_cell.grid
    (0...7).each do |row|
      row = Array.new
        (0...7).each do |cell|
          row.push(0)
        end
        test_cell.grid.push(row)
      end
      expect(0).to eq(test_cell.minimal_row(0))
  end

  it "can calculate neighbor based on rules" do
    test_cell = GameOfLife::Cell.new
    test_cell.grid
    (0...5).each do |row|
      row = Array.new
        (0...5).each do |cell|
          row.push(0)
        end
        test_cell.grid.push(row)
    end
     
    test_cell.grid[2][1] = 1
    test_cell.grid[2][2] = 1
    test_cell.grid[2][3] = 1

    expect(3).to eq(test_cell.calculate_neighbor(0, 4, 0, 4, 3, 3))
  end
  it "can check pattern blinker that created " do
    test_cell = GameOfLife::Cell.new
    file_name = "./test_input_file.txt"
    test_cell.create_pattern(file_name)

    arr_blinker = [ [0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0],
            [0, 1, 1, 1, 0],
            [0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0] ]
     
    expect(arr_blinker).to eq(test_cell.grid)
  end

  it "can check pattern block that created " do
    test_cell = GameOfLife::Cell.new
    file_name = "./test_input_blok.txt"
    test_cell.create_pattern(file_name)

    arr_block = [ [0, 0, 0, 0],
            [0, 1, 1, 0],
            [0, 1, 1, 0],
            [0, 0, 0, 0]]
     print arr_block
    expect(arr_block).to eq(test_cell.grid)
  end

  it "can generate next pattern block that created " do
    test_cell = GameOfLife::Cell.new
    file_name = "./test_input_blok.txt"
    test_cell.create_pattern(file_name)

    arr_block = [ [0, 0, 0, 0],
            [0, 1, 1, 0],
            [0, 1, 1, 0],
            [0, 0, 0, 0]]
     test_cell.generate_next_pattern
     print test_cell.generate_next_pattern
    expect(arr_block).to eq(test_cell.grid)
  end

end
