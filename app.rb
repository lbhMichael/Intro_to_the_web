require 'sinatra'
# ommited <%if @name%> from line one in index erb because if gave an error
#from introducing params

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  "this is hidden from in plain sight 2"
end

get '/ramdom-cat' do
  @name = ['Amigo', 'Oscar', 'Viking'].sample
  erb(:index)
end

get'/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
