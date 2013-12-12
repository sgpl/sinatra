require 'sinatra'
get '/instance' do 
	@name = "Sharad"
	@email = "sharad @ gatech . edu"
	erb :show
end
# the instance variable @name
__END__

@@show
<p>Hello <%= @name %>! Should I email you at <%= @email%></p>

