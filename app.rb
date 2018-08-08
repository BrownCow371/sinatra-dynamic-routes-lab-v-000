require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    # @number = params[:number].to_i
    # @number.times do
    #   "#{params[:phrase]}"
    # end
    phrase = "#{params[:phrase]}, #{params[:number].to_i}"
    2.times do
     puts phrase
  end
  end
end
