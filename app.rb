require 'sinatra'
class App < Sinatra::Application

# get '/' do
#   "Hello!"
# end
#
# get '/secret' do
#   "This is a secret! shh!"
# end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
   params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do #form displaying route
  erb:cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
end
