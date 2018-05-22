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
                   "D1", "D2", "D3", "D4"], grid.grid_layout.keys
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

    assert_equal 2, grid.place_computer_ship_length_2(2, x, y).length
  end

  def test_change_square_as_occupied
    grid = Grid.new
    square = Square.new
    assert grid.change_square_as_occupied
  end

  def test_place_computer_ship_cruise
    grid = Grid.new
    x = 3
    y = "C"

    assert_equal 3, grid.place_computer_ship_cruiser.length
  end
end
