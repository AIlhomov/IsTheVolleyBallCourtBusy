# app.rb

require 'sinatra' # require the sinatra gem
require 'sinatra/reloader' if development? # require the sinatra reloader gem if in development mode

set :public_folder, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views/volleyball/pages'
set :port, 1337 # Port number to run the server on

def get_result
    ['Yes', 'No'].sample
end

get '/' do # define a route (root route)
    @result = get_result # get the result
    erb :index
end

get 'api/result' do
    content_type :json
    { result: get_result }.to_json # return the result in JSON format
end