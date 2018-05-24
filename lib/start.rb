class Start

  def welcome
     "Welcome to BATTLESHIP. Would you like to (p)lay, read the (i)nstructions or (q)uit?"
  end

  def instructions
    'The goal of the game is to sink the ship of your opponent.
    Each player calls out one coordinate each turn in attempt to hit one of their opponent’s ships.'
  end

  def place_ship_destroyer
    'You have to place a destroyer on your grid. It is a two unit long. The different positions possible are A1 from A4 and D1 to D4'
  end

  def place_ship_cruiser
    'You have to place a cruiser on your grid. It is a three unit long. The different positions possible are A1 from A4 and D1 to D4'
  end

  def incorrect_ship_placement
    'Ships cannot wrap around the board.
    Ships cannot overlap.
    Ships can be laid either horizontally or vertically.
    Coordinates must correspond to the first and last units of the ship.
    (IE: You can’t place a two unit ship at “A1 A3”).'
  end

end
