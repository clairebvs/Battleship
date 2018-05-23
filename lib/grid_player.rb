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

  def valid_player_placement_input?(string_position)
    @valid_placement = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    # if valid_placement.include?(string_position)
    # end => in my loop
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

  def check_valid_destroyer_position(user_input)
    user_input = @valid_placement.sample
    require 'pry' ; binding.pry
  end


end
