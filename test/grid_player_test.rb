require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid_player'
require './lib/square'


class GridPlayerTest < Minitest::Test

  def test_it_exists
    grid_player = GridPlayer.new
    assert_instance_of GridPlayer, grid_player
  end

  def test_it_has_a_grid_to_play_for_player
    grid_player = GridPlayer.new
    assert_equal  ["A1", "A2", "A3", "A4",
                   "B1", "B2", "B3", "B4",
                   "C1", "C2", "C3", "C4",
                   "D1", "D2", "D3", "D4"], grid_player.grid_layout.keys
  end

  def test_valid_placement_string
    grid_player = GridPlayer.new
    string_position = "B2"
    string_position2 = "D5"
    assert grid_player.valid_player_placement_input?(string_position).include?(string_position)
    refute grid_player.valid_player_placement_input?(string_position).include?(string_position2)
  end

  def test_valid_destroyer_position
    grid_player = GridPlayer.new
    user_input = "A2 A3 A4"
    assert_equal "This is an invalid input. Enter coordinates like this A1 A2", grid_player.valid_destroyer_input(user_input)
  end

  def test_valid_cruiser_input
    grid_player = GridPlayer.new
    user_input = "A2 A3"
    assert_equal "This is an invalid input. Enter coordinates like this A1 A2", grid_player.valid_cruiser_input(user_input)
  end

  def test_check_if_valid_coor_for_two_unit_ship
    grid_player = GridPlayer.new
    user_input = "A2 A4"
    assert_equal "A", "1", "A", "2", grid_player.valid_coord_for_two_positions(user_input)
  end

end
