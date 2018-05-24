require 'minitest/autorun'
require 'minitest/pride'
require './lib/players'

class PlayersTest < Minitest::Test
  def test_it_exists
    players = Players.new
    assert_instance_of Players, players
  end

  def test_it_has_no_ships_when_party_start
    players = Players.new
    assert_equal ({}), players.player_ships
    assert_equal ({}), players.computer_ships
  end

  def test_when_start_players_are_not_winners
    players = Players.new
    refute players.win
  end

  def test_when_start_players_has_not_shot_yet
    players = Players.new
    assert_equal 0, players.shot
  end

  def test_human_and_computer_player_got_ships
    players = Players.new
    assert_equal ({destroyer: 2, cruiser: 3}), players.add_player_human_ships
    assert_equal ({destroyer: 2, cruiser: 3}), players.add_computer_ships
  end

  def test_human_player_place_ship_on_board
  end

  def test_computer_places_ship
  end
end
