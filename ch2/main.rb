require 'sinatra'
require 'sinatra/reloader' if development?

#set :public_folder, 'assets' # default name is public, but you can set it to whatever you want. 
#set :views, 'templates'

# the default names are public and views
# if you want to change them, you need to use the above code. 

get '/' do 
	erb :home # this is known as a view. 
			  # just like route handlers, except that instead of finishing with a string that's  
			  # sent back to the browser, we finish with erb :home
			  # it's a reference to what is known as a view (which is a representation of data, such as markup )
end

get '/about' do 
	erb :about		
end

get '/contact' do 
	erb :contact
end

not_found do 
	erb :not_found
end
