require "sinatra"
require "./lib/Simone.rb"

get '/' do
	@@simone = Secuencia.new
  	@@simone.obtener_siguiente
	@secuencia = @@simone.secuenciaToString
	erb:memorizar
end

get '/memorizar' do
	@@simone.obtener_siguiente
	@secuencia = @@simone.secuenciaToString
	erb:memorizar   
end

post '/jugar' do
	erb:jugar
end

post '/boton' do
	@value = params["boton"].to_i
	respuesta = @@simone.comparar_y_avanzar @value
	if respuesta
		if @@simone.finalizo_juego
			erb:ganaste
		elsif @@simone.finalizo_ronda
			@@simone.obtener_siguiente
			@secuencia = @@simone.secuenciaToString
			erb:memorizar
		else
			erb:jugar
		end

  	else
		erb:error
	end
end
