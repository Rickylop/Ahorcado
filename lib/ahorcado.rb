class Ahorcado


	def initialize secreto
		@palabra1b = secreto.split("")
#		@avance = "_ " * @palabra1b.size 
	end
	
	
    def valido letra
    	index = @palabra1b.index(letra)
    	
    	if index != nil
    		return index
    		#@avance[index*2] = letra
    	else
    		return 100
    		@avance
    	end
	end

#   def avance
#		@avance
#	end

end