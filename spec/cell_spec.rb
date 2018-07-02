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

  it "can calculate neighbor " do
    test_cell = GameOfLife::Cell.new
    test_cell.grid
    (0...4).each do |row|
      row = Array.new
        (0...4).each do |cell|
          row.push(0)
        end
        test_cell.grid.push(row)
    end
     
    test_cell.grid[1][1] = 1
    test_cell.grid[2][1] = 1
    test_cell.grid[3][1] = 1

    expect(3).to eq(test_cell.calculate_neighbor(1, 3, 0, 2, 2, 2))
  end

end
