
class InterpreteDeSalida
  
  def initialize(parametros_recibidos)
  	@parametros = parametros_recibidos
  end

  def interpretar_salida
  	tipo_de_salida = "consola"
    @parametros.each do |parametro_actual|
      palabras = parametro_actual.split("=")
      if(palabras.length == 2)
        posible_indicacion_de_tipo_de_salida = palabras[0]
        posible_ruta_del_archivo = palabras[1]
        if posible_indicacion_de_tipo_de_salida == "--output-file"
          tipo_de_salida = posible_ruta_del_archivo
        end
      end
    end
    return tipo_de_salida
  end

end