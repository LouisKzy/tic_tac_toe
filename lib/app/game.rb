class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player
  def initialize
    #TO DO : créé 2 joueurs
    puts "Joueur des X quel est ton prenom ?"
    input_player_x = gets.chomp
    joueur_x = Player.new(input_player_x, "X")
    puts " Joueur des O quel est ton prenom ?"
    input_player_o = gets.chomp
    joueur_x = Player.new(input_player_o, "O")

    # créé un board
    newgame = Board.new
    # met le status à "on going"

    # défini un current_player
    @current_player = 1
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

end