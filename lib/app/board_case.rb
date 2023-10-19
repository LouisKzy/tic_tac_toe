class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :case_number, :value
  
  def initialize(case_number, value=" ")
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @case_number = case_number
    @value = value

  end
  
end