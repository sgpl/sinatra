require 'sinatra' # ruby require statement that pulls in all the code from the Sinatra library
=begin 
the following block is the "route handler"
it starts with htTP verb 'get'
and says that the client should get the page with the URL /hello
=end
get '/hello' do 
	"Hello Sinatra!"
end

# localhost:4567/hello displays the message. 