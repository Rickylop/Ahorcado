require './lib/ahorcado.rb'

describe Ahorcado do

	it "validar que la letra no existe" do
		pf = Ahorcado.new
		expect(pf.valido "X").to eq false
	end
end
