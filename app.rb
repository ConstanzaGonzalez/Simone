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


