require 'rspec' 
require_relative '../model/interprete_de_parametros'

describe 'InterpreteDeParametros' do

  it 'deberia retornar quiet cuando se le pasa el parametro --format=quiet y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new("--format=quiet")
    expect(mi_interprete.interpretar_formato).to eq "quiet"
  end

  it 'deberia retornar pretty cuando se le pasa el parametro --format=pretty y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new("--format=pretty")
    expect(mi_interprete.interpretar_formato).to eq "pretty"
  end

  it 'deberia retornar pretty cuando se le pasa el parametro --format=prEtTY u otra combinacion de mayus y min, y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new("--format=prEtTY")
    expect(mi_interprete.interpretar_formato).to eq "pretty"
  end

  it 'deberia retornar quiet cuando se le pasa el parametro --format=QuIEt u otra combinacion de mayus y min, y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new("--format=QuIEt")
    expect(mi_interprete.interpretar_formato).to eq "quiet"
  end
end