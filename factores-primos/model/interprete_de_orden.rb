
class InterpreteDeOrden
  
  def initialize(parametros_recibidos)
    @parametros = parametros_recibidos
  end

  def interpretar_orden
    orden_a_devolver = "asc"
    @parametros.each do |parametro_actual|
      if parametro_actual == "--sort:des"
        orden_a_devolver = "des"
      end
    end
    return orden_a_devolver
  end

end
