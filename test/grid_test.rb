require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test

  def test_it_exists
    grid = Grid.new
    assert_instance_of Grid, grid
  end

  def test_it_has_a_grid_player
    grid = Grid.new
    assert_equal [[".", ".", ".", "."], [".", ".", ".", "."], [".", ".", ".", "."], [".", ".", ".", "."]], grid.grid_player_array
  end

  def test_it_has_a_grid_player
    grid = Grid.new
    assert_equal [[".", ".", ".", "."], [".", ".", ".", "."], [".", ".", ".", "."], [".", ".", ".", "."]], grid.grid_computer_array
  end

  

end
=begin
1 ) method to remember previous shots in array and iterate through to see if it contains already same user input and then store user_input or computer here
2 ) has to know about class ship
3 ) update grid after round
=end
