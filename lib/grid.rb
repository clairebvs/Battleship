require 'terminal-table.rb'
class Grid
   attr_reader :grid_layout,
               :position

  def initialize
     # @grid_layout =
     # [{"A1" => Square.new}, {"A2" => Square.new}, {"A3" => Square.new}, {"A4" => Square.new},
     #  {"B1" => Square.new}, {"B2" => Square.new}, {"B3" => Square.new}, {"B4" => Square.new},
     #  {"C1" => Square.new}, {"C2" => Square.new}, {"C3" => Square.new}, {"C4" => Square.new},
     #  {"D1" => Square.new}, {"D2" => Square.new}, {"D3" => Square.new}, {"D4" => Square.new}]
    @grid_layout =
    [{"A1" => Square.new, "A2" => Square.new, "A3" => Square.new, "A4" => Square.new,
     "B1" => Square.new, "B2" => Square.new, "B3" => Square.new, "B4" => Square.new,
     "C1" => Square.new, "C2" => Square.new, "C3" => Square.new, "C4" => Square.new,
     "D1" => Square.new, "D2" => Square.new, "D3" => Square.new, "D4" => Square.new}]
    @position = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    @ship_location = []
  end

  def coordinates(x, y)
    @coordinates = [x, y]
  end

  def find_first_random_position_computer_ship
    first_position = @position.sample
    array_first_position = first_position.split(//)
    return array_first_position
  end

  def place_computer_ship_length_2(ship_length = 2, x = 0, y = 0)
    destroyer_location = []
    first_po = find_first_random_position_computer_ship
    x = first_po[1]
    y = first_po[0]
     if @position.include?((y.ord + 1).chr)
       so = (y.ord + 1).chr
     else
       so = (y.ord - 1).chr
     end
    y = so
    x = first_po[1]
    second = (y + x).chars.join
    destroyer_location << first_po.join
    destroyer_location << second
    return destroyer_location
  end

  # def change_square_as_occupied(square)
  #   destroyer_location1 = place_computer_ship_length_2
  #   square.occupy = false
  #   # destroyer_location1.join.occupy == true
  #   square.occupy = true if destroyer_location1.square
  #   require 'pry' ; binding.pry
  #   # end
  #   return true
  # end

  def place_computer_ship_cruiser(ship_length = 3, x = 0, y = 0)
    cruiser_location = []
    first_position_possible = ["A1", "A2", "B1", "B2", "C1", "C2", "D1", "D2"]
    destroyer_location1 = place_computer_ship_length_2
    string_first = first_position_possible.sample
    if string_first == destroyer_location1
      first_position_possible.sample
    end
    first_po_array = string_first.split(//)
    x = first_po_array[1]
    x_integer = x.to_i
    y = first_po_array[0]
    repeat_length = ship_length - 1
    repeat_length.times do
      (x_integer + 1)
    end
    last_x = (x_integer + 1)
    y = first_po_array[0]
    cruiser = (y + last_x.to_s).chars.join
    cruiser_location << first_po_array.join("")
    cruiser_location << cruiser
    return cruiser_location
    # require 'pry' ; binding.pry
# missing one element for 3 length ship
  end

end
