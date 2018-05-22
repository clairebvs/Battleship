require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'
require './lib/square'
require 'pry'
class GridTest < Minitest::Test

  def test_it_exists
    grid = Grid.new
    assert_instance_of Grid, grid
  end

  def test_it_has_a_grid_to_play
    grid = Grid.new
    assert_equal  ["A1", "A2", "A3", "A4",
                   "B1", "B2", "B3", "B4",
                   "C1", "C2", "C3", "C4",
                   "D1", "D2", "D3", "D4"], grid.grid_layout[0].keys
  end

  def test_it_has_a_collection_of_position
    grid = Grid.new
    assert grid.position.include?("A2")
    assert grid.position.include?("D2")
  end

  def test_can_find_first_random_square
    grid = Grid.new

    assert_instance_of Array, grid.find_first_random_position_computer_ship
    assert_equal 2, grid.find_first_random_position_computer_ship.length
  end
  def test_place_computer_ship
    grid = Grid.new
    x = 2
    y = "A"

    assert_equal ["A2", "A3"], grid.place_computer_ship(2, x, y)
  end
end
=begin
1 ) method to remember previous shots in array and iterate through to see if it contains already same user input and then store user_input or computer here
2 ) has to know about class ship
3 ) update grid after round
=end
