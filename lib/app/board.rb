class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :array_board_case, :count_turn, :current_player

  def initialize
    @current_player = 1
    @count_turn = 1
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @array_board_case = Array.new(3) { Array.new(3) }
    # Crée les instances de BoardCase et les place dans le tableau
    3.times do |i|
      3.times do |j|
        @array_board_case[i][j] = BoardCase.new(i + 1, j + 1)
      end
    end
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    puts "Ou aller vous jouez (ligne)?"
    input_line = (gets.chomp.to_i) - 1
    puts "Ou aller vous jouez (collone)?"
    input_number = (gets.chomp.to_i) - 1
    while input_line > 0 || input_line < 2 || input_number > 0 || input_number < 2 || @array_board_case[input_line][input_number].value != " "
      puts "Veuillez choisir une case valide et non occupée."
      puts "Ou voulez-vous jouer (ligne)?"
      input_line = gets.chomp.to_i - 1
      puts "Ou voulez-vous jouer (colonne)?"
      input_number = gets.chomp.to_i - 1
    end
    #2) change la BoardCase jouée en fonction de la valeur du joueur (@sign ou O)
    if @array_board_case[input_line][input_number].value == " "
      @array_board_case[input_line][input_number].value = @count_turn.even? ? "X" : "O"
    end    #a qui de jouer
    @current_player = @count_turn.even? ? 2 : 1
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

  def show_board
    # Affiche le plateau de jeu sur le terminal avec des espaces pour les cases vides
    puts "-------------"
    @array_board_case.each do |row|
      row_str = row.map { |box| box.value.is_a?(Integer) ? "   " : " #{box.value} " }.join("|")
      puts "|#{row_str}|"
      puts "-------------"
    end
  end
end
