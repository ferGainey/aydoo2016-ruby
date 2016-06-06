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

  it 'deberia retornar [17] en calcular_divisores_primos(17)' do
    mi_calculador =  CalculadorDeFactoresPrimos.new
    expect(mi_calculador.calcular_divisores_primos(17)).to eq [17]
  end

  it 'deberia retornar [5,5] en calcular_divisores_primos(25)' do
    mi_calculador =  CalculadorDeFactoresPrimos.new
    expect(mi_calculador.calcular_divisores_primos(25)).to eq [5,5]
  end

  it 'deberia retornar [5,5] en calcular_divisores_primos(25)' do
    mi_calculador =  CalculadorDeFactoresPrimos.new
    expect(mi_calculador.calcular_divisores_primos(25)).to eq [5,5]
  end

  it 'deberia retornar [2,2,5,5] en calcular_divisores_primos(100)' do
    mi_calculador =  CalculadorDeFactoresPrimos.new
    expect(mi_calculador.calcular_divisores_primos(100)).to eq [2,2,5,5]
  end

  it 'debe lanzar una excepcion si se ingresa un numero que sea menor a 1' do
    mi_calculador = CalculadorDeFactoresPrimos.new
    expect{mi_calculador.calcular_divisores_primos(-2)}.to raise_exception(EntradaIncorrectaException)
  end

end
