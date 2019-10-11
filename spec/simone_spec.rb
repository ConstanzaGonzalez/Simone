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
	  expect( secuencia.inicial ).to eq [3,1,4,2]
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
	it "Juego la ronda final" do
		secuencia = Secuencia.new
		expect(secuencia.finalizo_juego).to eq false		
	end

	it "Termino ronda de dos" do
		secuencia = Secuencia.new
    secuencia.obtener(1)
    respuesta = secuencia.comparar_y_avanzar(3)
		respuesta = secuencia.comparar_y_avanzar(1)
		expect(secuencia.finalizo_ronda).to eq true		
	end

	it "Termino ronda de 4" do
		secuencia = Secuencia.new
    secuencia.obtener(3)
    respuesta = secuencia.comparar_y_avanzar(3)
		respuesta = secuencia.comparar_y_avanzar(1)
		respuesta = secuencia.comparar_y_avanzar(4)
		respuesta = secuencia.comparar_y_avanzar(2)
    expect(secuencia.finalizo_juego).to eq true		
   	expect(secuencia.finalizo_ronda).to eq true		
 	
	end
	
	it "Juego ronda de 2" do
		secuencia = Secuencia.new
    secuencia.obtener(1)
    respuesta = secuencia.comparar_y_avanzar(3)
		respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false	
		expect(secuencia.finalizo_ronda).to eq true		
	
	end
	
	it "Juego ronda de 1" do
		secuencia = Secuencia.new
    secuencia.obtener(0)
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false	
		expect(secuencia.finalizo_ronda).to eq true		
	
	end

	it "Juego dos rondas" do
		secuencia = Secuencia.new
    secuencia.obtener(0)
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false	
		expect(secuencia.finalizo_ronda).to eq true		
    secuencia.obtener(1)
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq true		
	end

	it "Gano el juego" do
		secuencia = Secuencia.new
    secuencia.obtener(0)
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false	
		expect(secuencia.finalizo_ronda).to eq true		
    secuencia.obtener(1)
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq true		
    secuencia.obtener(2)
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false		
    respuesta = secuencia.comparar_y_avanzar(4)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq true	
    secuencia.obtener(3)
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false		
    respuesta = secuencia.comparar_y_avanzar(4)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(2)
    expect(secuencia.finalizo_juego).to eq true
		expect(secuencia.finalizo_ronda).to eq true	
	end

		it "Me equivoco en la primera ronda" do
		secuencia = Secuencia.new
    secuencia.obtener(1)
    respuesta = secuencia.comparar_y_avanzar(3)
		respuesta = secuencia.comparar_y_avanzar(2)
		expect(respuesta).to eq false		
	end

	it "Gano el juego obtener siguiente" do
		secuencia = Secuencia.new
    secuencia.obtener_siguiente
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false	
		expect(secuencia.finalizo_ronda).to eq true		
    secuencia.obtener_siguiente
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq true		
    secuencia.obtener_siguiente
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false		
    respuesta = secuencia.comparar_y_avanzar(4)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq true	
    secuencia.obtener_siguiente
    respuesta = secuencia.comparar_y_avanzar(3)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(1)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false		
    respuesta = secuencia.comparar_y_avanzar(4)
    expect(secuencia.finalizo_juego).to eq false
		expect(secuencia.finalizo_ronda).to eq false	
    respuesta = secuencia.comparar_y_avanzar(2)
    expect(secuencia.finalizo_juego).to eq true
		expect(secuencia.finalizo_ronda).to eq true	
	end

end
