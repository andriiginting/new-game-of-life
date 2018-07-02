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

  it "can check of each cell with zero params" do
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

end
