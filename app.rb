require 'sinatra'
class App < Sinatra::Application

get '/' do
  "Hello!"
end

get '/secret' do
  "This is a secret! shh!"
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)  
end
end
