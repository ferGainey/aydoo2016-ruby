
class InterpreteDeFormato
  
  def initialize(parametros_recibidos)
  	@parametros = parametros_recibidos
  end

  def interpretar_formato
  	@parametros.downcase
  	if @parametros == "--format=quiet"
  	  return "quiet"
    else
      return "pretty"
    end
  end

end