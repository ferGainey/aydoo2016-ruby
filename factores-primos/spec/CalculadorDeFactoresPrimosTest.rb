require 'rspec' 
require_relative '../model/CalculadorDeFactoresPrimos'

describe 'CalculadorDeFactoresPrimos' do

  it 'deberia retornar 1 en calcular_divisores_primos(1)' do
    mi_calculador =  CalculadorDeFactoresPrimos.new
    expect(mi_calculador.calcular_divisores_primos(1)).to eq [1]
  end
  
end
