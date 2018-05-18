require './lib/ahorcado.rb'

describe Ahorcado do

	it "si palabra es HOLA, y enviamos L debe darme  2" do
		obj= Ahorcado.new "HOLA"
		expect(obj.valido "L").to eq 2
	end

it "si palabra es HOLA, y enviamos H debe darme  0" do
		obj= Ahorcado.new "HOLA"
		expect(obj.valido "H").to eq 0
	end

it "si palabra es HOLA, y enviamos A debe darme  3" do
		obj= Ahorcado.new "HOLA"
		expect(obj.valido "A").to eq 3
	end

it "si palabra es HOLA, y enviamos E debe darme  100" do
		obj= Ahorcado.new "HOLA"
		expect(obj.valido "E").to eq 100
	end


#	it "si palabra es HOLA, debe darme  _ _ _ _" do
#		obj= Ahorcado.new "HOLA"
#		expect(obj.avance).to eq "_ _ _ _ "
#	end

#	it "si palabra es HOLA, y valido H debe darme  H _ _ _" do
#		obj= Ahorcado.new "HOLA"
#		obj.valido "H"
#		expect(obj.avance).to eq "H _ _ _ "
#	end

#	it "si palabra es HOLA, y valido L debe darme  _ _ L _" do
#		obj= Ahorcado.new "HOLA"
#		obj.valido "L"
#		expect(obj.avance).to eq "_ _ L _ "
#	end

#	it "si palabra es HOLA, y valido L y A debe darme  _ _ L A" do
#		obj= Ahorcado.new "HOLA"
#		obj.valido "L"
#		obj.valido "A"
#		expect(obj.avance).to eq "_ _ L A "
#	end

end
