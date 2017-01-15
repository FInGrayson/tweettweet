get '/tweets' do
  @tweets = Tweet.all
  erb :'/index'
end

post '/tweets' do
  @tweet = Tweet.find(params[:id])
  erb :'/index', 
end
