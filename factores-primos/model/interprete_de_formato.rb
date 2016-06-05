
class InterpreteDeFormato
  
  def initialize(parametros_recibidos)
  	@parametros = parametros_recibidos
  end

  def interpretar_formato
  	formato_a_devolver = "pretty"
  	@parametros.each do |parametro_actual|
  	  parametro_actual.downcase!
  	  if parametro_actual == "--format=quiet"
  	    formato_a_devolver = "quiet"
      end
    end
    return formato_a_devolver
  end

end