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

Entonces(/^aparece la pantalla jugar con el boton "(.*?)"$/) do |numero|
	last_response.body.should=~ /#{numero}/m
end

