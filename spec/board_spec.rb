require_relative '../board'

describe Board do
  it 'has the correct points' do
    expect(Board.new(25).points).to eq [
      [[0, 0],[0, 1],[0, 2],[0, 3],[0, 4]],
      [[1, 0],[1, 1],[1, 2],[1, 3],[1, 4]],
      [[2, 0],[2, 1],[2, 2],[2, 3],[2, 4]],
    ]
  end

  it 'has 4 live cells' do
    live_count = Board.new(4).cells.select(&:alive?).count
    expect(live_count).to eq(8)
  end

  it 'can be initialized with a variable amount of live cells' do
    board = Board.new(4)
    live_count = board.cells.select(&:alive?).count
    expect(live_count).to eq 8
  end

  describe 'point on a cell' do
    it 'should should return the index of a cell' do
      board = Board.new(15)
      expect(board[0].point).to eq [0,0]
    end
  end


  describe '#tick' do
    it 'will reverse each cells state' do
      board = Board.new(25)
      cells = board.cells
      cells[0].make_alive
      board.tick(cells)
      expect(cells[0].alive?).to eq false
    end
  end

  #more specs can be written for each game rule
  describe '#game_logic for cell at 0' do
    it 'will transform cells state depending on live and dead count' do
    board = Board.new(25)
    cells = board.cells
    cells[0].kill
    cells[1].make_alive
    cells[5].make_alive
    cells[6].make_alive
    board.game_logic(cells)
    expect(cells[0].alive?).to eq true
    end
  end

  #more specs can be written for each game rule
  describe '#game_logic for cell at 0' do
    it 'will transform cells state depending on live and dead count' do
    board = Board.new(25)
    cells = board.cells
    cells[0].make_alive
    cells[1].kill
    cells[2].make_alive
    cells[5].make_alive
    cells[6].kill
    board.game_logic(cells)
    expect(cells[1].alive?).to eq true
    end
  end

  describe '#game_logic for cell at 1' do
    it 'will transform cells state depending on live and dead count' do
    board = Board.new(25)
    cells = board.cells
    cells[0].make_alive
    cells[1].kill
    cells[2].make_alive
    cells[5].make_alive
    cells[6].kill
    board.game_logic(cells)
    expect(cells[1].alive?).to eq true
    end
  end

  describe '#game_logic for cell at 2' do
    it 'will transform cells state depending on live and dead count' do
    board = Board.new(25)
    cells = board.cells
    cells[2].kill
    cells[3].make_alive
    cells[6].make_alive
    cells[7].make_alive
    cells[8].kill
    board.game_logic(cells)
    expect(cells[2].alive?).to eq true
    end
  end

  describe '#game_logic for cell at 3' do
    it 'will transform cells state depending on live and dead count' do
    board = Board.new(25)
    cells = board.cells
    cells[3].kill
    cells[2].kill
    cells[4].make_alive
    cells[7].make_alive
    cells[8].kill
    cells[9].make_alive
    board.game_logic(cells)
    expect(cells[3].alive?).to eq true
    end
  end

  describe '#game_logic for cell at 4' do
    it 'will transform cells state depending on live and dead count' do
    board = Board.new(25)
    cells = board.cells
    cells[4].kill
    cells[3].make_alive
    cells[6].make_alive
    cells[9].make_alive
    board.game_logic(cells)
    expect(cells[4].alive?).to eq true
    end
  end

  describe '#game_logic for cell at 5' do
    it 'will transform cells state depending on live and dead count' do
    board = Board.new(15)
    cells = board.cells
    cells[5].kill
    cells[0].kill
    cells[1].kill
    cells[6].kill
    cells[10].kill
    cells[11].kill
    board.game_logic(cells)
    expect(cells[5].alive?).to eq true
    end
  end

  # describe '#game_logic for cell at 6' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[6].make_alive
  #   cells[0].kill
  #   cells[1].kill
  #   cells[2].kill
  #   cells[5].kill
  #   cells[7].kill
  #   cells[10].kill
  #   cells[11].kill
  #   cells[12].kill
  #   board.game_logic(cells)
  #   expect(cells[6].alive?).to eq false
  #   end
  # end

  # describe '#game_logic for cell at 8' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[0].make_alive
  #   cells[1].kill
  #   cells[2].make_alive
  #   cells[5].make_alive
  #   cells[6].kill
  #   board.game_logic(cells)
  #   expect(cells[1].alive?).to eq true
  #   end
  # end
  #
  # describe '#game_logic for cell at 9' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[0].make_alive
  #   cells[1].kill
  #   cells[2].make_alive
  #   cells[5].make_alive
  #   cells[6].kill
  #   board.game_logic(cells)
  #   expect(cells[1].alive?).to eq true
  #   end
  # end
  #
  # describe '#game_logic for cell at 10' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[0].make_alive
  #   cells[1].kill
  #   cells[2].make_alive
  #   cells[5].make_alive
  #   cells[6].kill
  #   board.game_logic(cells)
  #   expect(cells[1].alive?).to eq true
  #   end
  # end
  #
  # describe '#game_logic for cell at 11' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[0].make_alive
  #   cells[1].kill
  #   cells[2].make_alive
  #   cells[5].make_alive
  #   cells[6].kill
  #   board.game_logic(cells)
  #   expect(cells[1].alive?).to eq true
  #   end
  # end
  #
  # describe '#game_logic for cell at 12' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[0].make_alive
  #   cells[1].kill
  #   cells[2].make_alive
  #   cells[5].make_alive
  #   cells[6].kill
  #   board.game_logic(cells)
  #   expect(cells[1].alive?).to eq true
  #   end
  # end
  #
  # describe '#game_logic for cell at 13' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[0].make_alive
  #   cells[1].kill
  #   cells[2].make_alive
  #   cells[5].make_alive
  #   cells[6].kill
  #   board.game_logic(cells)
  #   expect(cells[1].alive?).to eq true
  #   end
  # end
  #
  # describe '#game_logic for cell at 14' do
  #   it 'will transform cells state depending on live and dead count' do
  #   board = Board.new(25)
  #   cells = board.cells
  #   cells[0].make_alive
  #   cells[1].kill
  #   cells[2].make_alive
  #   cells[5].make_alive
  #   cells[6].kill
  #   board.game_logic(cells)
  #   expect(cells[1].alive?).to eq true
  #   end
  # end

end
