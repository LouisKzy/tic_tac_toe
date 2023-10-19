require 'bundler'
Bundler.require


require_relative 'lib/app/board_case.rb'
require_relative 'lib/app/board.rb'
require_relative 'lib/app/game.rb'
require_relative 'lib/app/player.rb'
require_relative 'lib/app/show.rb'

################################################################################################
#                                         Debut du programme                                   |
################################################################################################

##############################################
#              initialisation                |
##############################################

# creation joueurs
puts "Joueur des X quel est ton prenom ?"

joueur_x = Player.new("input_player_x", "X")

puts "Joueur des O quel est ton prenom ?"

joueur_o = Player.new("input_player_o", "O")

binding.pry
# cration partie 
# newgame = Board.new
# newgame.array_board_case[0][2].value = "X"
# newgame.show_board
# newgame.array_board_case[0][1].value = "O"
# newgame.show_board
