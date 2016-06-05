require 'rspec' 
require_relative '../model/interprete_de_parametros'

describe 'InterpreteDeParametros' do

  #testeo la parte de la interpretacion del formato	
  
  it 'deberia retornar quiet cuando se le pasa el parametro --format=quiet y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new(["--format=quiet"])
    expect(mi_interprete.interpretar_formato).to eq "quiet"
  end

  it 'deberia retornar pretty cuando se le pasa el parametro --format=pretty y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new(["--format=pretty"])
    expect(mi_interprete.interpretar_formato).to eq "pretty"
  end

  it 'deberia retornar pretty cuando se le pasa el parametro --format=prEtTY u otra combinacion de mayus y min, y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new(["--format=prEtTY"])
    expect(mi_interprete.interpretar_formato).to eq "pretty"
  end

  it 'deberia retornar quiet cuando se le pasa el parametro --format=QuIEt u otra combinacion de mayus y min, y se le pide que se interprete el formato' do
    mi_interprete =  InterpreteDeParametros.new(["--format=QuIEt"])
    expect(mi_interprete.interpretar_formato).to eq "quiet"
  end

  it 'deberia retornar por defecto pretty cuando se le pide que se interprete el formato y no se pasa nada' do
    mi_interprete =  InterpreteDeParametros.new([""])
    expect(mi_interprete.interpretar_formato).to eq "pretty"
  end

  it 'deberia saber identificar que parametros le corresponde cuando se le pide que se interprete el formato (con pretty) y se le pasan varios parametros' do
    mi_interprete =  InterpreteDeParametros.new(["5", "--output-file=salida.txt", "--format=pretty","--sort=asc"])
    expect(mi_interprete.interpretar_formato).to eq "pretty"
  end

  it 'deberia saber identificar que parametros le corresponde cuando se le pide que se interprete el formato (con quiet) y se le pasan varios parametros' do
    mi_interprete =  InterpreteDeParametros.new(["8", "--format=quiet", "--output-file=salida.txt", "--sort=asc"])
    expect(mi_interprete.interpretar_formato).to eq "quiet"
  end

  #en esta parte voy a testear la interpretacion del orden

  it 'deberia retornar asc cuando se le pasa el parametro --sort=asc y se le pide que se interprete el orden' do
    mi_interprete =  InterpreteDeParametros.new(["--sort=asc"])
    expect(mi_interprete.interpretar_orden).to eq "asc"
  end
  
end