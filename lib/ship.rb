class Ship
  attr_reader :length,
              :sunk

  def initialize
    @computer_ships = Hash.new
    @player_ships = Hash.new
    @length = length
    @start_space = nil
    @end_space = nil
    @sunk = false
    @touched_by_hit = 0
  end

  def computer_ships
    @computer_ships = {destroyer: 2, cruiser: 3}
  end

  def player_ships
    @player_ships = {destroyer: 2, cruiser: 3}
  end

  def sunk?
    @sunk = true
    if @length == @touched_by_hit
      @sunk = true
    end
  end

  def generate_computer_ships_position
    destroyer = @grid_computer.map {[*'A'..'D', *'1'..'4'].sample}.join
    # if @cell == 'water'

    # boat_1 need to add another cells next to it

    # +adding position goes right if ok do it if not goes down if not hoes left if not goes up
    cruiser = @grid_computer.map {[*'A'..'D', *'1'..'4'].sample}.join
    # horizontally or vertically
    # random start cell
    # one row and one column
  end
end


# knows about the ship ... their length and positions
