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

post '/ok' do
	erb:ok
end

post '/boton' do
	@value = params["boton"].to_i
	respuesta = @@simone.comparar_y_avanzar @value
	if respuesta
		erb:jugar
  else
		erb:error
	end
end
