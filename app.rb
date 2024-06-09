# app.rb

require 'sinatra' # require the sinatra gem
require 'sinatra/reloader' if development? # require the sinatra reloader gem if in development mode

require_relative 'src/helpers' # require the helpers file in src folder

set :public_folder, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views/volleyball/pages'



get '/' do # define a route (root route)
    @title = title
    @result = get_result

end