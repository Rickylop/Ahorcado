require 'sinatra'
require './config'

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