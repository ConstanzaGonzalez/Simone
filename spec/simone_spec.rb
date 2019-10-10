require "./lib/Simone.rb"

describe "Simone" do

it "Dame una secuencia de la primera ronda" do
	secuencia = Secuencia.new
	expect( secuencia.obtener(0)).to eq [3]
end

it "Dame una secuencia de la primera ronda" do
	secuencia = Secuencia.new
	expect( secuencia.obtener(1)).to eq [3,1]
end

it "Dame la secuencia inicial" do
  secuencia = Secuencia.new
  expect( secuencia.inicial ).to eq [3,1,4,2,1,4,3,2]
end


end
