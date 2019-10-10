Dado(/^que voy a la portada memorizar$/) do
  visit '/memorizar'
end

Entonces(/^veo "(.*?)"$/) do |texto|
  last_response.body.should=~ /#{texto}/m
end





Dado(/^que estoy en portada memorizar$/) do
	visit '/memorizar'
end
Entonces(/^aparece boton "(.*?)"$/) do |texto|
  last_response.body.should=~ /#{texto}/m
end


Dado(/^que estoy en la portada memorizar$/) do
	visit '/memorizar'
end

Dado(/^presiono el boton avanzar$/) do
	click_button('avanzar')
end

Entonces(/^aparece la pantalla jugar con con los botones "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |arg1, arg2, arg3, arg4|
last_response.body.should=~ /#{arg1}/m
last_response.body.should=~ /#{arg2}/m
last_response.body.should=~ /#{arg3}/m
last_response.body.should=~ /#{arg4}/m
end

Dado(/^presiono sobre el boton "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Entonces(/^veo el texto "(.*?)"$/) do |arg1|
	last_response.body.should=~ /#{arg1}/m
end

