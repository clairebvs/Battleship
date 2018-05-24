require './lib/grid'
require './lib/square'
require './lib/start'
require './lib/grid_player'

grid_computer = Grid.new
grid_player = GridPlayer.new
start = Start.new

p start.welcome
user_input = gets.chomp.to_s.downcase

until user_input == "q" || user_input == "quit"
      if user_input == "p" || user_input == "play"
        break
      elsif user_input == "i" || user_input == "instruction"
        p start.instructions
        user_input = gets.chomp.to_s
      else user_input == "q" || user_input == "quit"
        puts "Why ?"
        exit
      end
    end

    loop do
      puts "Starting game loop"
      grid_computer.placing_all_comp_ships
      puts start.place_ship_destroyer
      user_input = gets.chomp.to_s
      grid_player.valid_destroyer_input(user_input)
      puts start.place_ship_cruiser
      user_input = gets.chomp.to_s
      grid_player.valid_cruiser_input(user_input)
      #  ==> go to another method
      break
      # grid_player.valid_player_placement_input?(user_input)

    end


# user_input = gets.chomp.to_s
