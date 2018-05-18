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
			#session['obj'].valido params['intento']
			session['prueba']=session['obj'].valido params['intento']

			session['l1']= " "
			session['l2']= " "
			session['l3']= " "
			session['l4']= " "
			session['l5']= " "
			if session['prueba'] != 100
				case session['prueba']
				when 0
					session['l1']=params['intento']
					#session['l2']= "  "
					#session['l3']= "  "
					#session['l4']= "  "
					#session['l5']= "  "
				when 1
					#session['l1']= "_"
					#session['l3']= "_"
					#session['l4']= "_"
					#session['l5']= "_"
					session['l2']=params['intento']
				when 2
					#session['l1']= "_"
					#session['l2']= "_"
					#session['l4']= "_"
					#session['l5']= "_"
					session['l3']=params['intento']
				when 3
					#session['l1']= "_"
					#session['l2']= "_"
					#session['l3']= "_"
					#session['l5']= "_"
					session['l4']=params['intento']
				when 4
					#session['l1']= "_"
					#session['l2']= "_"
					#session['l3']= "_"
					#session['l4']= "_"
					session['l5']=params['intento']
					
				end
			end

			#session['prueba']=session['obj'].avance
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

