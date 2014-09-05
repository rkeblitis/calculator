def is_num(c)
  if c == "0" or c =="1" or c =="2" or c == "3" or
     c =="4" or c == "5" or c =="6" or c == "7 " or c == "8" or c == "9"

  else
    puts "This isn't a number"
      exit
  end
end






def calculate(f, a, b = nil)
  if f == "addition" or f == "+"
    add(a, b)

  elsif f == "subtraction" or f == "-"
    subtract(a, b)
  elsif f == "multiply" or f == "*"
      multiply(a, b)
  elsif f == "divide" or f == "/"
      divide(a, b)
  elsif f == "exponent" or f == "**"
     exponent(a, b)
   elsif f == "square root"
     square_root(a)
  else
    nil
  end
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  a / b
end

def exponent(a, b)
  a ** b
end

def square_root(a)
  Math.sqrt(a)
end


puts "Hello there!"
puts "What kind of maths would you like to do?"
input = gets.chomp
puts "What is the first number?"
num1 = gets.chomp
is_num(num1)

num1 = num1.to_i

if input == "square root"
  answer = calculate(input, num1)
  puts "Wow, your answer is (#{num1} #{input}) = #{answer.to_i}." "That's a big number!"
  exit
else
  puts "What is the second number?"
  num2 = gets.chomp
  is_num(num2)
  num2 = num2.to_i
  answer = calculate(input, num1, num2)
  puts "Wow, your answer is (#{num1} #{input} #{num2}) = #{answer}." "That's a big number!"

end
