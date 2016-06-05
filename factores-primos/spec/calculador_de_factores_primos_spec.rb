require 'rspec' 
require_relative '../model/calculador_de_factores_primos'

describe 'CalculadorDeFactoresPrimos' do

  it 'deberia retornar 1 cuando calcular_divisores_primos(1)' do
    mi_calculador =  CalculadorDeFactoresPrimos.new
    expect(mi_calculador.calcular_divisores_primos(1)).to eq [1]
  end
  
   it 'deberia retornar [2,2] en calcular_divisores_primos(4)' do
    mi_calculador =  CalculadorDeFactoresPrimos.new
    expect(mi_calculador.calcular_divisores_primos(4)).to eq [2,2]
  end

end
