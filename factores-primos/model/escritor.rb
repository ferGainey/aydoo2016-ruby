class Escritor

  def escribir(texto, salida)
    if salida == "consola"
      puts texto
    else
    archivo =File.new(salida,"w+")
    #escribo
    archivo.write texto
    end
  end 

end
