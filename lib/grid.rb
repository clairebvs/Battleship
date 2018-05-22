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

  def place_computer_ship(ship_length, x = 0, y = 0)
    first_po = find_first_random_position_computer_ship
    x = first_po[1]
    y = first_po[0]
    # ship_length_min_1 = ship_length - 1
    # second_position = []
    # ship_length_min_1.times do
    if @position.include?((y.ord + 1).chr)
      so = (y.ord + 1).chr
    else
      so = (y.ord - 1).chr
    end
    y = so
    x = first_po[1]
    # require 'pry' ;binding.pry
    second = (y + x).chars.join
    @ship_location << first_po.join
    @ship_location << second
    return @ship_location




    # if @position.include?((x.ord + 1).chr)
    #   (x.ord + 1).chr
    # else
    #   (x.ord - 1).chr
    # end
  end

      # first_square = @grid_layout.map do |element|
      #   element.sample
      # end
      # first_element_array = first_square.shift
      # @ship_location << first_element_array
      # array_strings = first_element_array.split(//)
      # x = array_strings[1]
      # y = array_strings[0]
      # @coordinates = ([x, y])
      # @ship_location.push([x, y])
    # end

end
