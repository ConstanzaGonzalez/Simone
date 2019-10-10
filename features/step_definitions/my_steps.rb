Dado(/^que voy a la portada memorizar$/) do
  visit '/memorizar'
end

Entonces(/^veo "(.*?)"$/) do |texto|
  last_response.body.should=~ /#{texto}/m
end


