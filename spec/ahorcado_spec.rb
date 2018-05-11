
require "./Ahorcado.rb"
describe Ahorcado do

	it "TEST01: compra por 700 en CO debe retornar 833" do
		obj = Amason.new
		pais = "CO"
		valorCompra = 700

		result = obj.calcularNeto(pais,valorCompra)

		expect(result).to eq 833
	end

	it "TEST02: compra por 4500 en PE debe retornar 5044.5" do
		obj = Amason.new
		pais = "PE"
		valorCompra = 4500

		result = obj.calcularNeto(pais,valorCompra)

		expect(result).to eq 5044.5
	end

	it "TEST03: compra por 8400 en AR debe retornar 9530.64" do
		obj = Amason.new
		pais = "AR"
		valorCompra = 8400

		result = obj.calcularNeto(pais,valorCompra)

		expect(result).to eq 9530.64
	end

	it "TEST04: compra por 10100 en CO debe retornar 10817.1" do
		obj = Amason.new
		pais = "CO"
		valorCompra = 10100

		result = obj.calcularNeto(pais,valorCompra)

		expect(result).to eq 10817.1
	end

	it "TEST05: compra por 10100 en PR debe retornar PaisInvalido" do
		obj = Amason.new
		pais = "PR"
		valorCompra = 10100

		result = obj.calcularNeto(pais,valorCompra)

		expect(result).to eq "PaisInvalido"
	end

	it "TEST06: compra por -1 en CO debe retornar ValorCompraInválido" do
		obj = Amason.new
		pais = "CO"
		valorCompra = -1

		result = obj.calcularNeto(pais,valorCompra)

		expect(result).to eq "ValorCompraInválido"
	end

end