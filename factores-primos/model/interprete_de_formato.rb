
class InterpreteDeFormato
  
  def initialize(parametros_recibidos)
  	@parametros = parametros_recibidos
  end

  def interpretar_formato
  	@parametros.each do |parametro_actual|
  	  parametro_actual.downcase!
  	  if parametro_actual == "--format=quiet"
  	    return "quiet"
      else
        return "pretty"
      end
    end
  end

end