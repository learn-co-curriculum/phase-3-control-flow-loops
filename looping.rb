require 'pry'
def happy_new_year
  i = 10
  while i >= 1
    puts i
    if i == 1
      puts "Happy New Year!"
    end
    i -= 1
  end
end

# No need to modify this code! Use this to implement the fizzbuzz_printer method.
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
  (1..100).each do |num|
    puts fizzbuzz(num)
  end
end

def reverse_string(str)
  reversed_str = ""
  str.each_char do |char|
    reversed_str = char + reversed_str
  end
  reversed_str
end
