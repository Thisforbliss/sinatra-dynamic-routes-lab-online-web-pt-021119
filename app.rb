require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get '/reversename/:name' do 
  params[:name].reverse 
end

get '/square/:number' do
  square = params[:number].to_i ** 2
  square.to_s
end

get '/say/:number/:phrase' do 
  phrase = params[:phrase] * params[:number].to_i
  phrase
end 

get '/say/:word1/:word2/:word3/:word4/:word5' do
params[:word1, :word2, :word3, :word4, :word5]
end

end