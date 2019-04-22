require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number * number}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]

    "#{phrase * number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_arr = []
    params.values.each do |word|
      word_arr << word
    end
    sentence = "#{word_arr.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operation
      when "add"
        "#{number1 + number2}"
      when "subtract"
        "#{number1 - number2}"
      when "multiply"
        "#{number1 * number2}"
      when "divide"
        "#{number1 / number2}"
    end
  end
end
