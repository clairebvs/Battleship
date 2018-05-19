class Start

  def welcome
     "Welcome to BATTLESHIP\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
     # user_input
  end

  def instructions
    'The goal of the game is to sunk the ship of your opponent.
    Each player calls out one coordinate each turn in attempt to hit one of their opponent’s ships.'
    #once it is done goes back to ask play or quit
  end

  def play
    'You have to place two ships on your grid.
     A two units long and a three units long. The different positions possible are A1 from A4 and D1 to D4'
     # user_input
  end

  def incorrect_ship_placement
    'Ships cannot wrap around the board.
    Ships cannot overlap.
    Ships can be laid either horizontally or vertically.
    Coordinates must correspond to the first and last units of the ship.
    (IE: You can’t place a two unit ship at “A1 A3”).'
    # if else statement depending on which rules they are breaking
  end



end
