class Board
  def initialize(live_cell_count)
    @live_cell_count = live_cell_count
  end

  def points
    [
      [[0, 0],[0, 1],[0, 2],[0, 3],[0, 4]],
      [[1, 0],[1, 1],[1, 2],[1, 3],[1, 4]],
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
    cells.sample(5).each { |cell| cell.make_alive }
    cells
  end


  def game_logic(cells)
    cells.map.each_with_index do |cell,index|
      if index == 0
        live_count(1,5,6)
        rules(cell, live_count(1,5,6))
      end
      if index == 1
        live_count(0,2,5,6)
        rules(cell, live_count(0,2,5,6))
      end
      if index == 2
        live_count(1,3,6,7,8)
        rules(cell, live_count(1,3,6,7,8),)
      end
      if index == 3
        live_count(2,4,7,8,9)
        rules(cell, live_count(2,4,7,8,9))
      end
      if index == 4
        live_count(3,8,9)
        rules(cell, live_count(3,8,9))
      end
      if index == 5
        live_count(0,1,6)
        rules(cell,live_count(0,1,6))
      end
      if index == 6
        live_count(0,1,2,5,7)
        rules(cell, live_count(0,1,2,5,7))
      end
      if index == 7
        live_count(1,2,3,6,8)
        rules(cell,live_count(1,2,3,6,8))
      end
      if index == 8
        live_count(2,3,4,7,9)
        rules(cell,live_count(2,3,4,7,9))
      end
      if index == 9
        live_count(3,4,8)
        rules(cell,live_count(3,4,8))
      end
    end
    cells
  end

  def next_gen(game_logic)
    next_gen = game_logic.reject do |cell|
      cell.will_survive? == false
    end
    next_gen
  end


  def live_count(*args)
    args.count{ |arg| cells[arg].alive? }
  end

  def rules(cell, live_count)
    if (cell.dead? && live_count == 3) || (cell.alive? && live_count == 2 || live_count == 3)
      cell.queue_for_birth
    else (cell.alive? && live_count < 2 || live_count > 3) || (cell.dead? && live_count > 3 || live_count < 3)
      cell.queue_for_death
    end
  end

end


class Cell < Board
  attr_accessor :point

  def initialize(point, alive)
    @point = point
    @alive = alive
    @will_surivive
  end

  def will_survive?
    @will_survive ? true : false
  end

  def alive?
    @alive ? true : false
  end

  def dead?
    @alive ? false : true
  end

  def make_alive
    @alive = true
  end

  def kill
    @alive = false
  end

  def queue_for_birth
    @will_survive = true
  end

  def queue_for_death
    @will_survive = false
  end
end

board = Board.new(10)
cells = board.cells
p cells
p queued_cells = board.game_logic(cells)
p board.next_gen(queued_cells)
