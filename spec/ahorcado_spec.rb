require './lib/ahorcado.rb'

describe Ahorcado do
	it "validar si la letra existe" do
		pf = Ahorcado.new "A"
		expect(pf.valido?).to eq true
	end

	it "validar que la letra no existe" do
		pf = Ahorcado.new "X"
		expect(pf.valido?).to eq false
	end
end
