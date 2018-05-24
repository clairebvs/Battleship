class Players
  attr_reader :player_ships,
              :computer_ships,
              :win,
              :shot

  def initialize
    @win = false
    @shot = 0
  end

  def add_player_human_ships
    @player_ships[:destroyer] = 2
    @player_ships[:cruiser] = 3
    return @player_ships
  end

  def add_computer_ships
    @computer_ships = {destroyer: 2, cruiser: 3}
  end

  def first_cell_computer_ship
    row = [*'A'..'D']
    column = [*'1'..'4']
    @grid_computer.map {[*'A'..'D', *'1'..'4'].sample}.join
  end

  def player_place_ship
  end

  def fire_at?
  end
end
