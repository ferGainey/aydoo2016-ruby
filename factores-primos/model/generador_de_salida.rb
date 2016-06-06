class GeneradorDeSalida
  
  def initialize(tipo_de_formato, tipo_de_orden, tipo_de_salida, lista_de_divisores)
  	@formato = tipo_de_formato
  	@orden = tipo_de_orden
  	@salida = tipo_de_salida
  	@divisores = lista_de_divisores
  end

  def aplicar_formato
  	if @formato == "pretty"
      texto_generado = "Factores primos x"
  	  numero_a_generar = 1
  	  @divisores.each do |numero_actual|
  	  	numero_a_generar = numero_a_generar * numero_actual
  	  	texto_generado += " " + numero_actual.to_s
  	  end
  	  texto_generado.gsub!(/x/, numero_a_generar.to_s + ":")
  	  return texto_generado
    elsif @formato == "quiet"
      texto_generado = ""
      @divisores.each do |numero_actual|
        texto_generado += "\n" + numero_actual.to_s
      end
    end
    return texto_generado
  end

  def aplicar_orden
  	if @orden == "asc"
  	  @divisores.sort!
  	end
  	return @divisores
  end

end