require 'rspec' 
require_relative '../model/CalculadorDeFactoresPrimos'

describe 'CalculadorDeFactoresPrimos' do

  it 'deberia retornar 1 cuando calcular_divisores_primos(1)' do
    CalculadorDeFactoresPrimos =  CalculadorDeFactoresPrimos.new
    expect(CalculadorDeFactoresPrimos.calcular_divisores_primos(1)).to eq [1]
  end
  
end
