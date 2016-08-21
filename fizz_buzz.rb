require ('./exception.rb')
class FizzBuzz

def putssomething (fuz)
  result = ""
  fuz.each  do |fuz_data|
    raise InvalidInputException, 'Please enter a number' unless fuz_data.to_s.is_numberic?
    if fuz_data.to_i % 3 ==0 && fuz_data.to_i % 5 ==0
        result += "FizzBuzz" + ' '
    elsif fuz_data.to_i % 3  ==0  or fuz_data.to_s.include?"3"
        result +=  "Fizz" + ' '
    elsif fuz_data.to_i % 5 ==0  or fuz_data.to_s.include?"5"
        result += "Buzz" + ' '
    elsif fuz_data.is_a?(Numeric)
      result += fuz_data.to_s + ' '
    end
  end
  return result
 end
end
