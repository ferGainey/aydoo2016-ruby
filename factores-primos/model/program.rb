require_relative '../model/interprete_de_parametros'
require_relative '../model/generador_de_salida'
require_relative '../model/calculador_de_factores_primos'
require_relative '../model/escritor'

class Programa
 
  def initialize() 
    @calculador_de_factores_primos = CalculadorDeFactoresPrimos.new
    @escritor = Escritor.new
  end

  def ejecutar
    parametros_recibidos = []
    ARGV.each do |argumento_actual|
    parametros_recibidos << argumento_actual
    end
    numero_recibido = parametros_recibidos[0].to_i
    lista_de_divisores_primos = @calculador_de_factores_primos.calcular_divisores_primos(numero_recibido)
    interprete_de_parametros = InterpreteDeParametros.new(parametros_recibidos)
    tipo_de_formato = interprete_de_parametros.interpretar_formato
    tipo_de_orden = interprete_de_parametros.interpretar_orden
    generador_de_salida = GeneradorDeSalida.new(tipo_de_formato, tipo_de_orden, lista_de_divisores_primos)
    texto_a_escribir = generador_de_salida.aplicar_orden
    texto_a_escribir = generador_de_salida.aplicar_formato
    tipo_de_salida = interprete_de_parametros.interpretar_salida
    @escritor.escribir(texto_a_escribir, tipo_de_salida)
  end

end 

programa = Programa.new
programa.ejecutar