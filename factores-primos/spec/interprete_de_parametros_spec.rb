require 'rspec' 
require_relative '../model/interprete_de_parametros'

describe 'InterpreteDeParametros' do

  it 'deberia retornar quiet cuando se le pasa el parametro --format=quiet y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new("--format=quiet")
    expect(mi_interprete.interpretar_formato).to eq "quiet"
  end

end