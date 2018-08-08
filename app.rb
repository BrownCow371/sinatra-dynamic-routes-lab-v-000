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

    number = params[:number].to_i
    phrase = "#{params[:phrase]}"
    new_phrase = ""
    number.times do
      new_phrase = new_phrase + " " + phrase 
    end
    new_phrase
  end

end
