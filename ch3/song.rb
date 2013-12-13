require 'dm-core' # main data_mapper gem
require 'dm-migrations'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
# this will create a file called development.db which will store all 
# the database information. 

class Song
	include DataMapper::Resource # this line links song class to DataMapper which inclides the Resource module from the DataMapper gem as a mixin. 
	# this is how you make a ruby class a DataMapper resource. 
	property :id, Serial 
	property :title, String 
	property :lyrics, Text 
	property :length, Integer 
	property :released_on, Date 
end

DataMapper.finalize
# DataMapper.finalize is required after all classes using DataMapper to check their integrity. 


=begin 
DataMapper properties all have a type, which correspond to core ruby classes. 
String - short strings
Text - longer pieces of text
Integer - used for whole nos. 
Float - for float
Boolean - for boolean values. 
DateTime - for date and time
=end


# copying the following two get methods because songs/:id isn't getting displayed properly
# get '/songs' do
# 	@songs = Song.all
# 	slim :songs
# end


# get '/songs/:id' do 
# 	@songs = Song.get(params[:id])
# 	slim :show_song
# end
