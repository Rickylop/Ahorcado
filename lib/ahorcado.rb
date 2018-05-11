class Ahorcado

	def initialize 
			@palabra1b = ["L", "I", "B", "R", "O"]
	end
	
	
    def valido letra
    	puts @palabra1b
		if @palabra1b.index(letra) == nil 
			false
		else 
			true
		end
			
	   
	end

end