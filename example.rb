def putssomething (fuz)
  fuz.each  do |fuz_data|
    if fuz_data % 3 ==0 && fuz_data % 5 ==0
      puts "FizzBuzz"
    elsif fuz_data % 3  ==0  or fuz_data.to_s.include?"3"
      puts "Fizz"
    elsif fuz_data % 5 ==0  or fuz_data.to_s.include?"5"
      puts "Buzz"
    elsif fuz_data.is_a?(Numeric)
      puts fuz_data
    end
  end
 end

 fuz= Array(1..100)
 putssomething (fuz)

fuz1=Array[-1,-2,-3]
putssomething (fuz1)

fuz2=Array[1,2,3,4,5,'q','w','e']
putssomething(fuze2)
