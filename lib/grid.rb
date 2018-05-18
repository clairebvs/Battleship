require 'terminal-table.rb'
class Grid

  def initialize
    @grid_player = {}
    @grid_computer = Hash.new
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

  def grid_player_hash
    @grid[:A] << [1, 2, 3, 4]
    @grid[:B] << [1, 2, 3, 4]
    @grid[:C] << [1, 2, 3, 4]
    @grid[:D] << [1, 2, 3, 4]
  end

  def grid_computer_hash
    @grid[:A] << [1, 2, 3, 4]
    @grid[:B] << [1, 2, 3, 4]
    @grid[:C] << [1, 2, 3, 4]
    @grid[:D] << [1, 2, 3, 4]
  end
end

puts table
# :border_i => "x"
