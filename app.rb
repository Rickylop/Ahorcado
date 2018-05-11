require 'sinatra'
require './config'
require './lib/ahorcado.rb'

get '/' do

	erb(:index)
end


post '/configurar' do
	
	erb(:juego)
	#session['numeroSecreto']= params['numeroSecreto']
	#if session['numeroSecreto'].split("").uniq.size == 4  
	#	session['mensaje']= "El numero esta configurado"
	#else
	#	session['mensaje']= "Numero no valido, intenta de nuevo"	
	#end
end


post '/validar' do
	session['obj'] = Ahorcado.new 
	session['resultado'] = "No existe"#session['obj'].validar params['intento']



	erb(:juego)
end

