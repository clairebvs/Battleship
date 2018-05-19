require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_it_exists
    ship = Ship.new
    assert_instance_of Ship, ship
  end

  def test_computer_has_different_ships
    ship = Ship.new

    assert_equal 2, ship.computer_ships[:destroyer]
    assert_equal 3, ship.computer_ships[:cruiser]
  end

  def test_player_has_different_ships
    ship = Ship.new

    assert_equal 2, ship.player_ships[:destroyer]
    assert_equal 3, ship.player_ships[:cruiser]
  end

  def test_computer_has_ships_on_board
    skip
    ship = Ship.new
    assert_equal string of a letter and a number, ship.generate_computer_ships_position
  end

  def test_ship_can_be_sunk
    ship = Ship.new
    assert_equal false, ship.sunk
    ship.sunk?
    assert_equal true, ship.sunk
  end


end

=begin
knows about computer ship and player ship = 2 ships 2 unit long and 3 units long
knows coordinates of ship
knows length of ship
=end
