require "pry"

def happy_new_year
  i = 10
while i > 0
  puts "#{i}"
  i -= 1
end
  if i == 0
    puts "Happy New Year!"
  end
end

def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    "FizzBuzz"
  elsif num % 3 == 0
    "Fizz"
  elsif num % 5 == 0
    "Buzz"
  else
    num
  end
end

def fizzbuzz_printer
  (1..100).each do |i|
    puts fizzbuzz(i)
  end
end

def reverse_string(str)
  reversed_str = ""
  (0...str.length).each do |i|
    reversed_str = str[i] + reversed_str
  end
  reversed_str
end
