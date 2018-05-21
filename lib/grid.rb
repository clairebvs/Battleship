require 'terminal-table.rb'
class Grid

  def initialize
    @player_grid = []
    @computer_grid = Array.new
    @length = length
    @coordinates = coordinates
  end

  def grid_layout
    cells = [[]]
  end

  def grid_shape
    rows = []
    rows << [".", 1, 2 ,3, 4]
    rows << ["A", " ", " ", " ", " "]
    rows << ["B"]
    rows << ["C"]
    rows << ["D"]
    table = Terminal::Table.new :rows => rows

    table.style = {:width => 40, :padding_left => 3, :border_x => "=" }
  end

  def grid_player_array
    x = "."
    x = Square.new
    grid_layout = [[".", ".", ".", "."],
            [".", ".", ".", "."],
            [".", ".", ".", "."],
            [".", ".", ".", "."]]
    @player_grid << grid
  end

  def grid_computer_array
    row_a = [".", ".", ".", "."]
    row_b = [".", ".", ".", "."]
    row_c = [".", ".", ".", "."]
    row_d = [".", ".", ".", "."]
    @computer_grid << row_a
    @computer_grid << row_b
    @computer_grid << row_c
    @computer_grid << row_d
  end

  def place_computer_ship(length)
      row = [*'A'..'D']
      column = [*'1'..'4']
      first_square = @grid_computer.map {[*'A'..'D', *'1'..'4'].sample}.join
      array_strings = first_square.split(//)

      @coordinates = (x, y)
      x = array_strings[1]
      y = array_strings[0]
      hor_ver = rand(2)
      if hor_ver == 0
        # horizontally
          x+1 || x-1
      elsif hor_ver == 1
        # vertical
          y+1 || y-1
      end

      if
        # going right

      # boat_1 need to add another cells next to it

      # +adding position goes right if ok do it if not goes down if not hoes left if not goes up

      # horizontally or vertically
      # random start cell
      # one row and one column
    end

end

# puts table
