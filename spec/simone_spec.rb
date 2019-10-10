require "./lib/Simone.rb"

describe "Simone" do

it "dame un secuencia" do
	secuencia = Secuencia.new
	expect( secuencia.obtener ).to eq "1 - 2"
end

end
