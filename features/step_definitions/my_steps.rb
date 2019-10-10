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


