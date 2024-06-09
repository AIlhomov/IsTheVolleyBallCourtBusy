#Routes

get '/' do
    @title = title
    @result = get_result
    erb :index
end

