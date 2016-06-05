class CalculadorDeFactoresPrimos

	def calcular_divisores_primos(numero)
	  divisores = []
	  if es_primo?(numero)
	    divisores << numero
		return divisores
	  end
	  divisor_candidato = 2
	  divisores << divisor_candidato
	  if numero%divisor_candidato == 0
	    divisores << divisor_candidato	
	  end 
	  return divisores
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
		  
				
end
