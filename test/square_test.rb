require 'minitest/autorun'
require 'minitest/pride'
require './lib/square'

class SquareTest < Minitest::Test
  def test_it_exists
    square = Square.new

    assert_instance_of Square, square
  end

  def test_it_is_empty_when_start_game
    square = Square.new

    refute square.occupy
  end

  def test_if_square_is_hit_then_not_empty_anymore
    square = Square.new

    assert_equal 'H', square.hit
  end

  def test_square_equal_m_is_missed
    square = Square.new

    assert_equal 'M', square.miss
  end
end
