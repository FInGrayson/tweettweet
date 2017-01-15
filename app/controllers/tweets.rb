get '/tweets' do
  @tweets = Tweet.all
  erb :'tweets/index'
end


get '/tweets/new' do
  require_user
  current_user
  erb :'tweets/new'
end


post '/tweets' do
  current_user
  @tweet = Tweet.new(params[:info])
  if request.xhr?
    if @tweet.save
      status 200
      erb :'_partial/_tweet', layout: false, locals: (tweet: @tweet)
    else
      status 422
    end
  else
    redirect '/'
  end
end
