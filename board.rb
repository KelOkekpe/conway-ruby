class Board
  def initialize(live_cell_count)
    @live_cell_count = live_cell_count
  end

  def points
    [
      [[0, 0],[0, 1],[0, 2],[0, 3],[0, 4]],
      [[1, 0],[1, 1],[1, 2],[1, 3],[1, 4]],
      [[2, 0],[2, 1],[2, 2],[2, 3],[2, 4]],
      [[3, 0],[3, 1],[3, 2],[3, 3],[3, 4]],
      [[4, 0],[4, 1],[4, 2],[4, 3],[4, 4]],
    ]
  end

  def [](index)
    cells[index]
  end

  def cells
    cells = []
    points.each do |row|
      row.each do |point|
        cells << Cell.new(point, false)
      end
    end
    cells.sample(12).each { |cell| cell.make_alive }
    cells
  end
end




class Cell < Board
  attr_accessor :point

  def initialize(point, alive)
    @point = point
    @alive = alive
  end

  def tick
    cells.map(&:to_s)
  end


  def format_cells
    "cell at point:#{@point} is #{@alive}"
  end

  def alive?
    if @alive
      true
    else
      false
    end
  end

  def dead?
    if @alive
      false
    else
      true
    end
  end

  def make_alive
    @alive = true
    "cell at #{@point} has been brought to life"
  end

  def kill
    @alive = false
    "cell at #{@point} has been killed"
  end

  def reverse
    if self.alive?
      kill
    elsif self.dead?
      make_alive
    end
  end
end




board = Board.new(25)
p board
p cells.tick
