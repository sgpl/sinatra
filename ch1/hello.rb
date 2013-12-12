require 'sinatra' # ruby require statement that pulls in all the code from the Sinatra library
require 'sinatra/reloader' if development?
# ^ means that if we add stuff we don't need to restart the sever
# to see the changes. 

=begin 
the following block is the "route handler"
it starts with htTP verb 'get'
and says that the client should get the page with the URL /hello
=end
get '/hello' do 
	"Hello Sinatra!"
end

# localhost:4567/hello displays the message. 

get '/frank' do 
	name = "Frank"
	"Hello #{name}"
end

get '/sharad' do
	"Hello World " * 10 
end

get '/sharad2' do
	"Hello World Hello" * 10000 
end

get '/:name' do 
	name = params[:name]
	"Hello #{name}"
end

get '/:one/:two/:three' do
	"first: #{params[:one]}, second: #{params[:two]}, third: #{params[:three]}"
end


get '/what/time/is/it/in/:number/:hours' do #  this is the same thing as :name
	number = params[:number].to_i
	time = Time.now + number * 3600
	"The time in #{number} hours will be #{time.strftime('%I:%M %p')}"
end

# ^ this route contains a named parameter, called :name, signified
# by the leading colon. 

# Named parameter can go anywhere in the url and are available in the 
# handler as part of the params hash. 
