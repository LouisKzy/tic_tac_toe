class Show

  def show_board
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    
    @array_board_case.each do |box, number|
      puts box + number
    end
  end

  def show_player
    puts @name
  end
end
