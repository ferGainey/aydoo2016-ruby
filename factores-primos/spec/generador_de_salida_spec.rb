require 'rspec' 
require_relative '../model/generador_de_salida'

describe 'GeneradorDeSalida' do
 
  it 'deberia retornar Factores primos 360: 2 2 2 3 3 5, si le aplico el formato pretty a la lista de divisores [2,2,2,3,3,5]' do
    mi_generador =  GeneradorDeSalida.new("pretty", "", "", [2,2,2,3,3,5])
    expect(mi_generador.aplicar_formato).to eq "Factores primos 360: 2 2 2 3 3 5"
  end

end