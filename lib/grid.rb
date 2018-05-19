require 'terminal-table.rb'
class Grid

  def initialize
    @player_grid = []
    @computer_grid = Array.new
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
    row_a = [".", ".", ".", "."]
    row_b = [".", ".", ".", "."]
    row_c = [".", ".", ".", "."]
    row_d = [".", ".", ".", "."]
    @player_grid << row_a
    @player_grid << row_b
    @player_grid << row_c
    @player_grid << row_d
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
end

# puts table
