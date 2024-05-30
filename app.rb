# app.rb

require 'sinatra'

set :views, File.dirname(__FILE__) + '/views/volleyball/pages'

get '/' do
  @result = ['Yes', 'No'].sample
  
  erb :index
end
