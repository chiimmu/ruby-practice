input = gets
num = input.to_i

(1..num).each do |i|
  
  if i%15 == 0
    puts "FizzBuzz!"
  elsif i%3 == 0
    puts "Fizz!"
  elsif i%5 == 0  
    puts "Buzz!"
  else
    puts i
  end

end
