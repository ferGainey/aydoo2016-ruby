
require_relative '../model/interprete_de_formato'
require_relative '../model/interprete_de_orden'
require_relative '../model/interprete_de_salida'

class InterpreteDeParametros

  def initialize(parametros_recibidos)
  	@interprete_de_formato = InterpreteDeFormato.new(parametros_recibidos)
  	@interprete_de_orden = InterpreteDeOrden.new(parametros_recibidos)
  	@interprete_de_salida = InterpreteDeSalida.new(parametros_recibidos)
  end

  def interpretar_formato
    return @interprete_de_formato.interpretar_formato
  end

  def interpretar_orden
    return @interprete_de_orden.interpretar_orden
  end

  def interpretar_salida
  	return @interprete_de_salida.interpretar_salida
  end

end