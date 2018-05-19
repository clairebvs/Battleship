require 'minitest/autorun'
require 'minitest/pride'
require './lib/start'

class StartTest < Minitest::Test

  def test_it_exists
    start = Start.new

    assert_instance_of Start, start
  end

  def test_it_has_a_welcome_method
    start = Start.new

    assert_equal "Welcome to BATTLESHIP\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?", start.welcome
  end

  def test_it_has_instructions
    start = Start.new

    assert_equal 'The goal of the game is to sunk the ship of your opponent.
    Each player calls out one coordinate each turn in attempt to hit one of their opponent’s ships.', start.instructions
  end



end




=begin
1 ) print welcome
2 ) gets user_input = play, instruction or quit
3 ) if play  display instruction to place ship
4 ) place random ship for computer
5 ) ask for user_input to place ship
6 ) check if valide placement if correct goes on if incorrect goes back to asking
7 ) place player-ship on board
=end
