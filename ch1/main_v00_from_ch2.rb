require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do 
	erb :home # this is known as a view. 
			  # just like route handlers, except that instead of finishing with a string that's  
			  # sent back to the browser, we finish with erb :home
			  # it's a reference to what is known as a view (which is a representation of data, such as markup )
			  # 
end

get '/about' do 
	erb :about, :layout => :special # can do this for special layout which
								# we'll have to create using @@special
end

get '/contact' do 
	erb :contact
end


__END__
@@layout
<!doctype html>
<% title = "Songs By Sinatra".swapcase.next %>
<html lang="en">
<head>
	<title><%= title %></title>
	<meta charset="utf-8">
</head>
<body>
	<header>
		<h1><%= title%></h1>
		<nav>
			<ul>
				<li><a href="/" title="Home">Home</a></li>
				<li><a href="/about" title="About">About</a></li>
				<li><a href="/contact" title="Contact">Contact</a></li>
			</ul>
		</nav>
	</header>
	<section>
		<%= yield %>
	</section>
</body>
</html>

@@home
<p>Welcome to this website all about the songs of the great Frank Sinatra</p>

@@about
<p>this page is about frank sinatra. helloooOOO!!!</p>

@@contact
<p>Ok this is the contact page.</p>
<p><b>Give Sinatra</b> a call at 000-999-9332</p>
