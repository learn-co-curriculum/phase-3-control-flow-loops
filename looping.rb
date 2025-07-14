def happy_new_year
  countdown = 10
  until countdown == 0
    puts countdown
    countdown -= 1
  end
  puts "Happy New Year!"
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
  (1..100).each { |num| puts fizzbuzz(num) }
end

def reverse_string(str)
  reversedStr = "" 
  i = str.length - 1 
  while i >= 0
    reversedStr += str[i] 
    i -= 1
  end
  reversedStr
end
