class Secuencia

	def reset
		@secuenciaInicial = [3,1,4,2]	
		@secuenciaActual = []
		@@ronda = 0
		@@targetRonda = 0    
  end
	 
  def initialize
		reset
 	end

	def modo_test
		@secuenciaInicial = [3,1,4,2]
	end
	
	def obtener_siguiente 
		obtener(@@targetRonda)
	end


	def obtener iteracion  
    	@@ronda = 0
      @secuenciaActual = []
		for i in 0..iteracion do
			@secuenciaActual.push(@secuenciaInicial[i])
		end
    @@targetRonda = @secuenciaActual.length
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
		return @@ronda == (largo_lista )
			
	end

	def finalizo_ronda
 		resultado = @@ronda == @@targetRonda
		return resultado
	end

	


end
