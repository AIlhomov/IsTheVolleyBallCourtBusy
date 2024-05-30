# app.rb

require 'sinatra' # require the sinatra gem

set :views, File.dirname(__FILE__) + '/views/volleyball/pages' # set the views directory

def get_result
    ['Yes', 'No'].sample # return a random result
end  

get '/' do # define a route (root route)
  @result = get_result # get a random result

  erb :index # render the index.erb file
end