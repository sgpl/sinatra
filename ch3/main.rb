require 'sinatra'
require './song'
require 'sass'
require 'slim'
require 'sinatra/reloader' if development?

# implementing a simple login mechanism:
configure do 
	enable :sessions
	set :username, "frank"
	set :password, "sinatra"
end

get '/login' do 
	slim :login
end

#set :public_folder, 'assets' # default name is public, but you can set it to whatever you want. 
#set :views, 'templates'
#set :port, 1234 # sets port to 1234 from the default of 4567

# the default names are public and views
# if you want to change them, you need to use the above code. 


get ('/styles.css') { scss :styles } 

# do = { and end = } in this block.

get '/' do 
	@title = "Homepage. This is the homepage for this website!!!"
	slim :home # this is known as a view. 
			  # just like route handlers, except that instead of finishing with a string that's  
			  # sent back to the browser, we finish with erb :home
			  # it's a reference to what is known as a view (which is a representation of data, such as markup )
end

get '/about' do 
	@title = "This is the TITLE for the about page"
	slim :about		
end

get '/contact' do 
	slim :contact
end

not_found do 
	@title = "You typed something wrong in the browser! ha ha ha"
	slim :not_found
end

=begin
 # can also do this: // also need to create a four_o_four.erb in views
four_o_four do
	erb :four_o_four
end
=end

get 'fake_error' do
	status 500 # see wikipedia List of HTTP status codes (for a more comprehensive list of codes)
	"This is a fake error mate!"
end

post '/login' do 
	if params[:username] == settings.username && params[:password] == settings.password
		session[:admin] = true
		redirect to('/songs')
	else
		slim :login
	end
end

get '/logout' do 
	session.clear
	redirect to('/login')
end

# get '/set/:name' do
# 	session[:name] = params[:name]
# end

# get '/get/hello' do 
# 	"Hello #{session[:name]}"
# end
# -----
# get '/songs' do
# 	@songs = Song.all
# 	slim :songs
# end

# get '/songs/:id' do 
# 	@song_id = Song.get(params[:id])
# 	slim :show_song
# end


# get '/songs/new' do
# 	@song = Song.new
# 	slim :new_song
# end
