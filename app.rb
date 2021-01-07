require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  "this is hidden from in plain sight 2"
end

get '/cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end
