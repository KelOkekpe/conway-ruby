class Board
  def initialize(live_cell_count)
    @live_cell_count = live_cell_count
  end

  def points
    [
      [[0, 0],[0, 1],[0, 2],[0, 3],[0, 4]],
      [[1, 0],[1, 1],[1, 2],[1, 3],[1, 4]],
      [[2, 0],[2, 1],[2, 2],[2, 3],[2, 4]],
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
    cells.sample(8).each { |cell| cell.make_alive }
    cells
  end

  def tick(cells)
    cells.each {|cell| cell.reverse}
  end

  def game_logic(cells)
    count = 0
    cells.each_with_index do |cell, index|
      if index == 0
        puts "this is index 0"
        live_count = 0
        dead_count = 0

        if cells[1].alive?
          live_count += 1
        elsif cells[1].dead?
          dead_count += 1
        end
        if cells[5].alive?
          live_count += 1
        elsif cells[5].dead?
          dead_count += 1
        end
        if cells[6].alive?
          live_count += 1
        elsif cells[6].dead?
          dead_count += 1
        end
        if cell.dead? && live_count == 3
          cell.make_alive
        elsif cell.alive? && live_count <= 1
          cell.kill
        elsif cell.alive? && live_count >= 4
          cell.kill
        elsif cell[0].alive? && live_count == 2 || live_count == 3
          cell.make_alive
        end
      end

      if index == 1
        puts "this is index 1"
        live_count = 0
        dead_count = 0
        if cells[0].alive?
          live_count += 1
        elsif cells[0].dead?
          dead_count += 1
        end
        if cells[2].alive?
          live_count += 1
        elsif cells[2].dead?
          dead_count += 1
        end
        if cells[5].alive?
          live_count += 1
        elsif cells[index + 4].dead?
          dead_count += 1
          end
        if cells[5].alive?
          live_count += 1
        elsif cells[5].dead?
          dead_count += 1
        end
        if cells[6].alive?
          live_count += 1
        elsif cells[6].dead?
          dead_count += 1
        end
        if cell.dead? && live_count == 3
          cell.make_alive
        elsif cell.alive? && live_count <= 1
          cell.kill
        elsif cell.alive? && live_count >= 4
          cell.kill
        else cell.alive? && live_count == 2 || live_count == 3
          cell.make_alive
        end
      end

      if index == 2
          live_count = 0
          dead_count = 0
          if cells[1].alive?
            live_count += 1
          elsif cells[1].dead?
            dead_count += 1
          end
          if cells[3].alive?
            live_count += 1
          elsif cells[3].dead?
            dead_count += 1
          end
          if cells[6].alive?
            live_count += 1
          elsif cells[6].dead?
            dead_count += 1
          end
          if cells[7].alive?
            live_count += 1
          elsif cells[7].dead?
            dead_count += 1
          end
          if cells[8].alive?
            live_count += 1
          elsif cells[8].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 3
          live_count = 0
          dead_count = 0
          if cells[2].alive?
            live_count += 1
          elsif cells[2].dead?
            dead_count += 1
          end
          if cells[4].alive?
            live_count += 1
          elsif cells[4].dead?
            dead_count += 1
          end
          if cells[7].alive?
            live_count += 1
          elsif cells[7].dead?
            dead_count += 1
          end
          if cells[8].alive?
            live_count += 1
          elsif cells[8].dead?
            dead_count += 1
          end
          if cells[9].alive?
            live_count += 1
          elsif cells[9].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 4
          live_count = 0
          dead_count = 0
          if cells[3].alive?
            live_count += 1
          elsif cells[3].dead?
            dead_count += 1
          end
          if cells[8].alive?
            live_count += 1
          elsif cells[8].dead?
            dead_count += 1
          end
          if cells[9].alive?
            live_count += 1
          elsif cells[9].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 5
          live_count = 0
          dead_count = 0
          if cells[0].alive?
            live_count += 1
          elsif cells[0].dead?
            dead_count += 1
          end
          if cells[1].alive?
            live_count += 1
          elsif cells[1].dead?
            dead_count += 1
          end
          if cells[6].alive?
            live_count += 1
          elsif cells[6].dead?
            dead_count += 1
          end
          if cells[10].alive?
            live_count += 1
          elsif cells[10].dead?
            dead_count += 1
          end
          if cells[11].alive?
            live_count += 1
          elsif cells[11].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 6
          live_count = 0
          dead_count = 0
          if cells[0].alive?
            live_count += 1
          elsif cells[0].dead?
            dead_count += 1
          end
          if cells[1].alive?
            live_count += 1
          elsif cells[1].dead?
            dead_count += 1
          end
          if cells[2].alive?
            live_count += 1
          elsif cells[2].dead?
            dead_count += 1
          end
          if cells[5].alive?
            live_count += 1
          elsif cells[5].dead?
            dead_count += 1
          end
          if cells[7].alive?
            live_count += 1
          elsif cells[7].dead?
            dead_count += 1
          end
          if cells[10].alive?
            live_count += 1
          elsif cells[10].dead?
            dead_count += 1
          end
          if cells[11].alive?
            live_count += 1
          elsif cells[11].dead?
            dead_count += 1
          end
          if cells[12].alive?
            live_count += 1
          elsif cells[12].dead?
            dead_count += 1
          end

          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 7
          live_count = 0
          dead_count = 0
          if cells[1].alive?
            live_count += 1
          elsif cells[1].dead?
            dead_count += 1
          end
          if cells[2].alive?
            live_count += 1
          elsif cells[2].dead?
            dead_count += 1
          end
          if cells[3].alive?
            live_count += 1
          elsif cells[3].dead?
            dead_count += 1
          end
          if cells[6].alive?
            live_count += 1
          elsif cells[6].dead?
            dead_count += 1
          end
          if cells[8].alive?
            live_count += 1
          elsif cells[8].dead?
            dead_count += 1
          end
          if cells[11].alive?
            live_count += 1
          elsif cells[11].dead?
            dead_count += 1
          end
          if cells[12].alive?
            live_count += 1
          elsif cells[12].dead?
            dead_count += 1
          end
          if cells[13].alive?
            live_count += 1
          elsif cells[13].dead?
            dead_count += 1
          end

          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 8
          live_count = 0
          dead_count = 0
          if cells[2].alive?
            live_count += 1
          elsif cells[2].dead?
            dead_count += 1
          end
          if cells[3].alive?
            live_count += 1
          elsif cells[3].dead?
            dead_count += 1
          end
          if cells[4].alive?
            live_count += 1
          elsif cells[4].dead?
            dead_count += 1
          end
          if cells[7].alive?
            live_count += 1
          elsif cells[7].dead?
            dead_count += 1
          end
          if cells[9].alive?
            live_count += 1
          elsif cells[9].dead?
            dead_count += 1
          end
          if cells[12].alive?
            live_count += 1
          elsif cells[12].dead?
            dead_count += 1
          end
          if cells[13].alive?
            live_count += 1
          elsif cells[13].dead?
            dead_count += 1
          end
          if cells[14].alive?
            live_count += 1
          elsif cells[14].dead?
            dead_count += 1
          end

          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 9
          live_count = 0
          dead_count = 0
          if cells[3].alive?
            live_count += 1
          elsif cells[3].dead?
            dead_count += 1
          end
          if cells[4].alive?
            live_count += 1
          elsif cells[4].dead?
            dead_count += 1
          end
          if cells[8].alive?
            live_count += 1
          elsif cells[8].dead?
            dead_count += 1
          end
          if cells[13].alive?
            live_count += 1
          elsif cells[13].dead?
            dead_count += 1
          end
          if cells[14].alive?
            live_count += 1
          elsif cells[14].dead?
            dead_count += 1
          end

          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 10
          live_count = 0
          dead_count = 0

          if cells[5].alive?
            live_count += 1
          elsif cells[5].dead?
            dead_count += 1
          end
          if cells[6].alive?
            live_count += 1
          elsif cells[6].dead?
            dead_count += 1
          end
          if cells[11].alive?
            live_count += 1
          elsif cells[11].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          elsif cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 11
          live_count = 0
          dead_count = 0
          if cells[5].alive?
            live_count += 1
          elsif cells[5].dead?
            dead_count += 1
          end
          if cells[6].alive?
            live_count += 1
          elsif cells[6].dead?
            dead_count += 1
          end
          if cells[7].alive?
            live_count += 1
          elsif cells[7].dead?
            dead_count += 1
          end
          if cells[10].alive?
            live_count += 1
          elsif cells[10].dead?
            dead_count += 1
          end
          if cells[12].alive?
            live_count += 1
          elsif cells[12].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 12
          live_count = 0
          dead_count = 0
          if cells[6].alive?
            live_count += 1
          elsif cells[6].dead?
            dead_count += 1
          end
          if cells[7].alive?
            live_count += 1
          elsif cells[7].dead?
            dead_count += 1
          end
          if cells[8].alive?
            live_count += 1
          elsif cells[8].dead?
            dead_count += 1
          end
          if cells[11].alive?
            live_count += 1
          elsif cells[11].dead?
            dead_count += 1
          end
          if cells[13].alive?
            live_count += 1
          elsif cells[13].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 13
          live_count = 0
          dead_count = 0
          if cells[7].alive?
            live_count += 1
          elsif cells[7].dead?
            dead_count += 1
          end
          if cells[8].alive?
            live_count += 1
          elsif cells[8].dead?
            dead_count += 1
          end
          if cells[9].alive?
            live_count += 1
          elsif cells[9].dead?
            dead_count += 1
          end
          if cells[12].alive?
            live_count += 1
          elsif cells[12].dead?
            dead_count += 1
          end
          if cells[14].alive?
            live_count += 1
          elsif cells[14].dead?
            dead_count += 1
          end
          if cell.dead? && live_count == 3
            cell.make_alive
          elsif cell.alive? && live_count <= 1
            cell.kill
          elsif cell.alive? && live_count >= 4
            cell.kill
          else cell.alive? && live_count == 2 || live_count == 3
            cell.make_alive
          end
      end

      if index == 14
        live_count = 0
        dead_count = 0
        if cells[8].alive?
          live_count += 1
        elsif cells[8].dead?
          dead_count += 1
        end
        if cells[9].alive?
        live_count += 1
          elsif cells[9].dead?
          dead_count += 1
        end
        if cells[13].alive?
          live_count += 1
        elsif cells[13].dead?
          dead_count += 1
        end
        if cell.dead? && live_count == 3
          cell.make_alive
        elsif cell.alive? && live_count <= 1
          cell.kill
        elsif cell.alive? && live_count >= 4
          cell.kill
        else cell.alive? && live_count == 2 || live_count == 3
          cell.make_alive
        end
      end
      count += 1
    end
  end
  
end





class Cell < Board
  attr_accessor :point

  def initialize(point, alive)
    @point = point
    @alive = alive
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
    "cell at #{point} has been brought to life"
  end

  def kill
    @alive = false
    "cell at #{point} has been killed"
  end

  def reverse
    if self.alive?
      kill
    elsif self.dead?
      make_alive
    end
  end

end


# board = Board.new(15)
# cells = board.cells
# cells[0].make_alive
# p cells[0]
# cells[1].make_alive
# p cells[1]
# cells[2].make_alive
# p cells[2]
# cells[5].make_alive
# p cells[5]
# cells[6].make_alive
# p cells[6]
#
# puts
# p board.cells
# p board.tick(cells)
# p cells
# p board.game_logic(cells)
