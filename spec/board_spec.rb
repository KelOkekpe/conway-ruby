require_relative '../board'

describe Board do
  it 'has the correct points' do
    expect(Board.new(25).points).to eq [
      [[0, 0],[0, 1],[0, 2],[0, 3],[0, 4]],
      [[1, 0],[1, 1],[1, 2],[1, 3],[1, 4]],
      [[2, 0],[2, 1],[2, 2],[2, 3],[2, 4]],
      [[3, 0],[3, 1],[3, 2],[3, 3],[3, 4]],
      [[4, 0],[4, 1],[4, 2],[4, 3],[4, 4]],
    ]
  end

  it 'has 4 live cells' do
    live_count = Board.new(4).cells.select(&:alive?).count
    expect(live_count).to eq(4)
  end

  it 'can be initialized with a variable amount of live cells' do
    board = Board.new(15)
    live_count = board.cells.select(&:alive?).count
    expect(live_count).to eq 15
  end

  describe 'point on a cell' do
    it 'should should return the index of a cell' do
      board = Board.new(15)
      expect(board[0].point).to eq [0,0]
    end
  end




  # describe 'tick' do
  #   it 'will change live cells to dead cells' do
  #     board = Board.new(20)
  #
  #     expect cells
  #
  #   end
    # each tick will change live cells to dead and dead cells to alive as defined in the rules
  # end
end
