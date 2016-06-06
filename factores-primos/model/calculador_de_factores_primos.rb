require_relative '../model/entrada_incorrecta_exception'

class CalculadorDeFactoresPrimos

	#falta modelar las excepciones
	def calcular_divisores_primos(numero)
	  if numero >= 1 
	    numero = numero.to_i
	    divisores = []
	    if es_primo?(numero)
	      divisores << numero
		  return divisores
	    else
	      divisor_actual = 2
	      numero_actual = numero
	      proceso_terminado = false
	      while !proceso_terminado
	        divisor_actual = buscar_divisor_primo(numero_actual, divisor_actual)	
	        numero_actual = numero_actual / divisor_actual
	        divisores << divisor_actual
	        proceso_terminado = (numero_actual == 1) 
	      end
	      return divisores
	    end
	  else
	    raise EntradaIncorrectaException, "El numero que se ingresa tiene que ser mayor a 0"  
	  end 
	end

	#faltaria ponerlo como metodo privado
	def es_primo?(numero)
	  if(numero == 1 || numero == 2)
	  	return true
	  else
	  	i = numero - 1
	  	loop do
	  		if(numero % i == 0)
	  			return false
	  		end
	  		i-=1
	  		break if i < 2
	    end
	  	return true	
	  end
	end
	
	#lo tengo que poner como privado	
	def buscar_divisor_primo(numero_actual, divisor_actual)
      while divisor_actual <= numero_actual
      	if ((numero_actual % divisor_actual) == 0) && es_primo?(divisor_actual)
          return divisor_actual
        else
          divisor_actual += 1
         end
	  end  
	end		

end
