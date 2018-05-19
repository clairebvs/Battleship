class Ship
  attr_reader :length

  def initialize
    @computer_ships = Hash.new
    @player_ships = Hash.new 
  end

  def computer_ships
    @computer_ships = {destroyer: 2, cruiser: 3}
  end

  def player_ships
    @player_ships = {destroyer: 2, cruiser: 3}
  end

  def generate_computer_ships_position
    boat_1 = @grid_computer.map {[*'A'..'D', *'1'..'4'].sample}.join
    # boat_1 need to add another cells next to it

    # +adding position goes right if ok do it if not goes down if not hoes left if not goes up


    boat_2 = @grid_computer.map {[*'A'..'D', *'1'..'4'].sample}.join




    # horizontally or vertically
    # random start cell
    # one row and one column
  end

end


# knows about the ship ... their length and positions
#
