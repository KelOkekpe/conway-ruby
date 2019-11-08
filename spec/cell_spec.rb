require_relative '../board'

describe Cell do
  describe '#format_cell' do
    it 'should output the cells index and state in in plain english' do
      alive = false
      cell = Cell.new([0,0], alive)
      expect(cell.format_cells).to eq "cell at point:[0, 0] is false"
    end
  end

  describe '#alive' do
    it 'returns true for live cells' do
      cell = Cell.new([0,0], true)
      expect(cell.alive?).to eq true
    end
  end

  describe '#dead' do
    it 'returns true for dead cells' do
      cell = Cell.new([0,0], false)
      expect(cell.dead?).to eq true
    end
  end

  describe '#make_alive' do
    it 'changes cell state to alive' do
      cell = Cell.new([0,0], false)
      cell.make_alive
      expect(cell.alive?).to eq true
    end

    it 'returns description of cell state' do
      cell = Cell.new([0,0], false)
      expect(cell.make_alive).to eq "cell at [0, 0] has been brought to life"
    end
  end

  describe '#kill' do
    it 'should set the cell state to false' do
      cell = Cell.new([0,0], true)
      cell.kill
      expect(cell.alive?).to eq false
    end

    it 'returns description of cell state' do
      cell = Cell.new([0,0], false)
      expect(cell.kill).to eq "cell at [0, 0] has been killed"
    end
  end



end
