require 'sinatra'

get '/' do 
	erb :home # this is known as a view. 
			  # just like route handlers, except that instead of finishing with a string that's  
			  # sent back to the browser, we finish with erb :home
			  # it's a reference to what is known as a view (which is a representation of data, such as markup )
			  # 
end


__END__
@@home
<!doctype html>
<html lang="en">
<head>
	<title>Songs By Sinatra</title>
	<meta charset="utf-8">
</head>
<body>
	<header>
		<h1>Songs By Sinatra</h1>
		<nav>
			<ul>

				<li><a href="/" title="Home">Home</a></li>
				<li><a href="/about" title="About">About</a></li>
				<li><a href="/contact" title="Contact">Contact</a></li>
			</ul>
		</nav>
	</header>
	<section>
		<p>Welcome to this website all about the songs of the great Frank Sinatra</p>
	</section>
</body>
</html>

