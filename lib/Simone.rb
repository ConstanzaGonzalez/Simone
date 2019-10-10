class Secuencia

	def initialize
		@secuenciaInicial = [3,1,4,2]
		@secuenciaActual = []
		@@ronda = 0
 	end

	def obtener iteracion

		for i in 0..iteracion do
			@secuenciaActual.push(@secuenciaInicial[i])
		end
		return @secuenciaActual
	end

	def secuenciaToString 
		@secuenciaActual.join("-")
	end
 
	def inicial
		@secuenciaInicial
	end

	def comparar numero
		return @secuenciaInicial[@@ronda] == numero  
	end

	def incrementar_ronda
		@@ronda+=1	
	end

	def comparar_y_avanzar numero
		respuesta = comparar numero
		if respuesta 
			incrementar_ronda
		end
		return respuesta
	end

	def finalizo_juego
		largo_lista = @secuenciaInicial.length
		return @@ronda == (largo_lista -1)
			
	end

end
