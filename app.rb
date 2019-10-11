require "sinatra"
require "./lib/Simone.rb"

get '/memorizar' do
	@@simone = Secuencia.new
  @@simone.obtener(1)
	@secuencia = @@simone.secuenciaToString
	erb:memorizar   
end

post '/jugar' do
	erb:jugar
end

post '/boton' do
	@value = params["boton"].to_i
	respuesta = @@simone.comparar @value
	if respuesta
		if @@simone.finalizo_juego
			erb:ganaste
		else
			@@simone.incrementar_ronda
			erb:jugar
		end

  	else
		erb:error
	end
end
