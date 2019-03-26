require 'sinatra'

get '/' do
  erb :login
end

post '/login' do
  pass = params[:password]
  if pass == "risingsun"
    redirect "/main"
  else
    redirect "/"
  end
end

get '/main' do
  erb :main
end