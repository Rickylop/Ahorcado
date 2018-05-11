require './lib/ahorcado.rb'

describe Ahorcado do
	#it "validar si la letra existe" do
	#	pf = Ahorcado.new "A"
	#	expect(pf.valido?).to eq true
	#end

	it "validar que la letra no existe" do
		pf = Ahorcado.new
		expect(pf.valido? "X").to eq false
	end
end
