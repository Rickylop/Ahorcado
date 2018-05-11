require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do
	session['resultado'] = ""
	session['prueba'] = " "
	erb(:index)
end


post '/configurar' do
	
		session['obj'] = Ahorcado.new "LIBRO"
		if params['intento']
			session['obj'].valido params['intento']
			session['prueba']=session['obj'].avance
			#if (session['obj'].valido params['intento'].to_i > 0)
			#	session['resultado'] = "SI existe"	
			#else 
			#	session['resultado'] = "No existe letra"
			#end
		else
			session['resultado'] = "Digite letra"
		end
	
	erb(:juego)
	#session['numeroSecreto']= params['numeroSecreto']
	#if session['numeroSecreto'].split("").uniq.size == 4  
	#	session['mensaje']= "El numero esta configurado"
	#else
	#	session['mensaje']= "Numero no valido, intenta de nuevo"	
	#end
end

