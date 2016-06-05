
class InterpreteDeOrden
  
  def initialize(parametros_recibidos)
  	@parametros = parametros_recibidos
  end

  def interpretar_orden
  	@parametros.each do |parametro_actual|
      if parametro_actual == "--sort:des"
        return "des"
      else
        return "asc"
      end
    end
  end

end