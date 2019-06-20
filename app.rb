require_relative 'config/environment'
require 'pry'
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
 parent = "HEy #{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  #binding.pry
   sum = params[:number1].to_i + params[:number2].to_i
   sum.to_s
  # subtract = params[:number2].to_i - params[:number1].to_i
  # subtract.to_s
  #binding.pry
end
  
  
  
  
  
  
  
  
  
  
end