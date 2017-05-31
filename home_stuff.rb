require 'sinatra'
class HomeStuff < Sinatra::Base
  	set :public_folder => "public", :static => true

	get '/' do
		`node '../harmonyHubCLI/harmonyHubCli.js' -l 192.168.1.105 -d 'Electra Air conditioner' -c 'PowerToggle'`
    	erb :welcome
  	end
end
