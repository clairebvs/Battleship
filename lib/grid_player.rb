class GridPlayer
  attr_reader :grid_layout

  def initialize
    @grid_layout =
    {"A1" => Square.new, "A2" => Square.new,
     "A3" => Square.new, "A4" => Square.new,
     "B1" => Square.new, "B2" => Square.new,
     "B3" => Square.new, "B4" => Square.new,
     "C1" => Square.new, "C2" => Square.new,
     "C3" => Square.new, "C4" => Square.new,
     "D1" => Square.new, "D2" => Square.new,
     "D3" => Square.new, "D4" => Square.new}
     @valid_placement = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
  end

  def valid_player_placement_input?(user_input)
    @valid_placement = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    valid_input = user_input.split(" ").all? do |element|
      valid_placement.include?(element)
    end
    if valid_input
      valid_destroyer_input(user_input)
    else
      puts "This is not a valid input"
      user_input = "p"
    end
  end

  def valid_destroyer_input(user_input)
    coord_destroyer = /[A-D][1-4]\s[A-D][1-4]/
    valid = coord_destroyer.match(user_input)
    if valid == user_input
      return user_input
    else
      return "This is an invalid input. Enter coordinates like this A1 A2"
    end
  end

  def valid_cruiser_input(user_input)
    coord_cruiser = /[A-D][1-4]\s[A-D][1-4]\s[A-D][1-4]/
    valid = coord_cruiser.match(user_input)
    if valid == user_input
      user_input
    else
      "This is an invalid input. Enter coordinates like this A1 A2"
    end
  end

  def valid_coord_for_two_positions(user_input)
    user_input = user_input.to_s
    split_user_input = user_input.to_s.split
    first_coord = split_user_input[0]
    second_coord = split_user_input[1]
    coord_of_first_position = first_coord.chars
    x1 = coord_of_first_position[1]
    y1 = coord_of_first_position[0]
    # require 'pry' ; binding.pry

    coord_of_second_position = second_coord.chars
    x2 = coord_of_second_position[1]
    y2 = coord_of_second_position[0]
    return x1, y1, x2, y2
  end

  def valid_destroyer_position(coordinates)
    require 'pry' ; binding.pry
    if x1 == (x2 + 1) || y1 == (y2 + 1)
      square.chane_occupy if square.occupy
    else
      "This not a valid placement, the coordinates must represent the first and last unit of the ship such as B2 C2."
    end
  end

  def check_if_square_is_empty_for_user_input
    square.occupy
    require 'pry' ; binding.pry
    @grid_layout
  end

  def place_all_player_ships

  end

  def display_map_player
    puts "=========="
    puts "   1 2 3 4"
    puts "A #{@grid_layout["A1"].result} #{@grid_layout["A2"].result} #{@grid_layout["A3"].result} #{@grid_layout["A4"].result}"
    puts "B #{@grid_layout["B1"].result} #{@grid_layout["B2"].result} #{@grid_layout["B3"].result} #{@grid_layout["B4"].result}"
    puts "C #{@grid_layout["C1"].result} #{@grid_layout["C2"].result} #{@grid_layout["C3"].result} #{@grid_layout["C4"].result}"
    puts "D #{@grid_layout["D1"].result} #{@grid_layout["D2"].result} #{@grid_layout["D3"].result} #{@grid_layout["D4"].result}"
  end


end
