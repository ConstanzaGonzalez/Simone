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

	it "Dame la secuencia de dos numeros en string" do
	  secuencia = Secuencia.new
	  secuencia.obtener(1)
	  expect( secuencia.secuenciaToString ).to eq "3-1"
	end

	it "Numero ingresado por el usuario es igual a el numero correcto" do
		secuencia = Secuencia.new
		respuesta = secuencia.comparar(3)
		expect(respuesta).to eq true	
	end
	
	it "Numero ingresado por el usuario es igual a el numero correcto" do
		secuencia = Secuencia.new
		respuesta = secuencia.comparar(3)
		expect(respuesta).to eq true	
		secuencia.incrementar_ronda
		respuesta = secuencia.comparar(1)
		expect(respuesta).to eq true	
	end
	it "Numero ingresado por el usuario es igual a el numero correcto" do
		secuencia = Secuencia.new
		respuesta = secuencia.comparar_y_avanzar(3)
		expect(respuesta).to eq true	
		respuesta = secuencia.comparar_y_avanzar(1)
		expect(respuesta).to eq true	
	end
	
	

end
