require './lib/grid'
require './lib/square'
require './lib/start'
require './lib/grid_player'

s = Grid.new
grid_player = GridPlayer.new
start = Start.new

p start.welcome
user_input = gets.chomp.to_s

until user_input == "q" || user_input == "quit"
      # user_input = gets.chomp.to_s
      if user_input == "p" || user_input == "play"
        break 
        # grid_player.valid_destroyer_input(user_input)
        # grid_player.valid_coord_for_two_positions(user_input)
        # grid_player.valid_destroyer_position(coordinates)
        #  =>> need one method that check everything before
        # guess_input back to another method
      elsif user_input == "i" || user_input == "instruction"
        p start.instructions
        user_input = gets.chomp.to_s
      else user_input == "q" || user_input == "quit"
        puts "Why ?"
        exit
      end
    end

    loop do game
      puts start.play
      s.placing_all_comp_ships
      start.game
      user_input = gets.chomp.to_s
      grid_player.valid_player_placement_input?(user_input)


# user_input = gets.chomp.to_s






# until
