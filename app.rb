require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  "this is hidden from in plain sight 2"
end

get '/cat' do
  "<div style='border: 3px solid red'>
    <img src='http://bit.ly/1eze8aE'>
   </div>"
end
