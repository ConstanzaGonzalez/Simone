class Secuencia

	def initialize
	 @secuenciaInicial = [3,1,4,2,1,4,3,2]
		@secuenciaActual = []
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


end
