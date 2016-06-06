require 'rspec' 
require_relative '../model/generador_de_salida'

describe 'GeneradorDeSalida' do
 
  it 'deberia retornar Factores primos 360: 2 2 2 3 3 5, si le aplico el formato pretty a la lista de divisores [2,2,2,3,3,5]' do
    mi_generador =  GeneradorDeSalida.new("pretty", "", [2,2,2,3,3,5])
    expect(mi_generador.aplicar_formato).to eq "Factores primos 360: 2 2 2 3 3 5"
  end

  it 'deberia retornar 2 2 2 3 3 5 (cada numero en una linea), si le aplico el formato quiet a la lista de divisores [2,2,3,5]' do
    mi_generador =  GeneradorDeSalida.new("quiet", "", [2,2,3,5])
    expect(mi_generador.aplicar_formato).to eq "2\n2\n3\n5\n"
  end

  it 'si el formato es un formato no aceptado, entonces imprime Formato no aceptado. Las opciones posibles son: pretty o quiet.' do
    mi_generador =  GeneradorDeSalida.new("formato no aceptado", "", [2,2,3,5])
    expect(mi_generador.aplicar_formato).to eq "Formato no aceptado. Las opciones posibles son: pretty o quiet."
  end

  it 'deberia retornar [2,2,2,3,3,5], si le aplico el orden asc a la lista de divisores [2,2,2,3,3,5]' do
    mi_generador =  GeneradorDeSalida.new("", "asc", [2,2,2,3,3,5])
    expect(mi_generador.aplicar_orden).to eq [2,2,2,3,3,5]
  end
  

  it 'deberia retornar [5,3,3,2,2,2], si le aplico el orden des a la lista de divisores [2,2,2,3,3,5]' do
    mi_generador =  GeneradorDeSalida.new("", "des", [2,2,2,3,3,5])
    expect(mi_generador.aplicar_orden).to eq [5,3,3,2,2,2]
  end

end