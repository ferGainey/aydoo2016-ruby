
class InterpreteDeFormato
  
  def initialize(parametros_recibidos)
    @parametros = parametros_recibidos
  end

  def interpretar_formato
    formato_a_devolver = "pretty"
    @parametros.each do |parametro_actual|
      palabras = parametro_actual.split("=")
      if palabras.length == 2
        posible_indicacion_de_tipo_de_formato = palabras[0]
        posible_tipo_de_formato = palabras[1]
        if (posible_tipo_de_formato.downcase == "quiet") && (posible_indicacion_de_tipo_de_formato == "--format")
          formato_a_devolver = "quiet"
        elsif ((posible_tipo_de_formato.downcase != "quiet") && (posible_tipo_de_formato.downcase != "pretty")) && (posible_indicacion_de_tipo_de_formato == "--format")
          formato_a_devolver = "formato no aceptado"
        end
      end
    end  
    return formato_a_devolver
  end

end
