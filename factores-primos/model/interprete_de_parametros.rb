
require_relative '../model/interprete_de_formato'

class InterpreteDeParametros

  def initialize(parametros_recibidos)
  	@interprete_de_formato = InterpreteDeFormato.new(parametros_recibidos)
  end

  def interpretar_formato
    return @interprete_de_formato.interpretar_formato
  end

end