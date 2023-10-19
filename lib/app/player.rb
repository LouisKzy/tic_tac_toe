class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :name, :sign_x_or_o, :array_player
  
  def initialize(name, sign)
    #TO DO : doit régler son nom et sa valeur
    @name = name
    @sign_x_or_o = sign

    
  end
end