require 'terminal-table.rb'
require 'pry'

class Grid
   attr_reader :grid_layout,
               :position

  def initialize
    @grid_layout = {"A1" => Square.new, "A2" => Square.new, "A3" => Square.new, "A4" => Square.new,
     "B1" => Square.new, "B2" => Square.new, "B3" => Square.new, "B4" => Square.new,
     "C1" => Square.new, "C2" => Square.new, "C3" => Square.new, "C4" => Square.new,
     "D1" => Square.new, "D2" => Square.new, "D3" => Square.new, "D4" => Square.new}
    @position = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    @ship_location = []
  end

  # def create_empty_grid
  #   @grid_layout = {"A1" => Square.new, "A2" => Square.new, "A3" => Square.new, "A4" => Square.new,
  #    "B1" => Square.new, "B2" => Square.new, "B3" => Square.new, "B4" => Square.new,
  #    "C1" => Square.new, "C2" => Square.new, "C3" => Square.new, "C4" => Square.new,
  #    "D1" => Square.new, "D2" => Square.new, "D3" => Square.new, "D4" => Square.new}
  # end

  def find_first_random_position_computer_ship
    first_position = @position.sample
    array_first_position = first_position.split(//)
    return array_first_position
  end

  def place_computer_ship_length_2(first_po)
    destroyer_location = []
    x = first_po[1]
    y = first_po[0]
    if @position.include?((y.ord + 1).chr + x)
      so = (y.ord + 1).chr
    else
      so = (y.ord - 1).chr
    end
    y = so
    x = first_po[1]
    second = (y + x).chars.join
    destroyer_location << first_po
    destroyer_location << second
    change_square_as_occupied(destroyer_location)
    return destroyer_location
  end

  def change_square_as_occupied(destroyer_location)
    location_1 = destroyer_location[0]
    location_2 = destroyer_location[1]
    @grid_layout[location_1].change_occupy
    @grid_layout[location_2].change_occupy
  end

  def place_computer_ship_cruiser(ship_length = 3)
    cruiser_location = []
    first_position_possible = ["A1", "A2", "B1", "B2", "C1", "C2", "D1", "D2"]
    string_first = first_position_possible.sample
    first_po_array = string_first.split(//)
    x = first_po_array[1]
    x_integer = x.to_i
    y = first_po_array[0]
    x_integers = []
    ship_length.times do |index|
      x_integers << (x_integer + index)
    end
    x_integers.map do |element|
      cruiser_location << (y + element.to_s)
    end
    cruiser_location.map do |element|
      if !@grid_layout[element].occupy
        return cruiser_location
      else
        return place_computer_ship_cruiser
      end
    end
  end

  def change_occupy_cruiser_ship(cruiser_location)
    cruiser_location.map do |element|
      @grid_layout[element].change_occupy
    end
  end

  def placing_all_comp_ships
    random_square = find_first_random_position_computer_ship
    total2_ship = place_computer_ship_length_2(random_square)
    change_square_as_occupied(total2_ship)
    place_cruiser = place_computer_ship_cruiser
    change_occupy_cruiser_ship(place_cruiser)
  end


  def display_map_computer
    puts "   1 2 3 4"
    puts "A #{@grid_layout["A1"].result} #{@grid_layout["A2"].result} #{@grid_layout["A3"].result} #{@grid_layout["A4"].result}"
    puts "B #{@grid_layout["B1"].result} #{@grid_layout["B2"].result} #{@grid_layout["B3"].result} #{@grid_layout["B4"].result}"
    puts "C #{@grid_layout["C1"].result} #{@grid_layout["C2"].result} #{@grid_layout["C3"].result} #{@grid_layout["C4"].result}"
    puts "D #{@grid_layout["D1"].result} #{@grid_layout["D2"].result} #{@grid_layout["D3"].result} #{@grid_layout["D4"].result}"
  end

end
