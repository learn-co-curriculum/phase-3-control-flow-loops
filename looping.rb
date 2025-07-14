def happy_new_year
  countdown = 10

  while countdown > 0
    puts countdown
    countdown -= 1
  end
  puts 'Happy New Year!'
end

# No need to modify this code! Use this to implement the fizzbuzz_printer method.
def fizzbuzz(num)
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
  end
end

def fizzbuzz_printer
  counter = 1
  until counter > 100
    fizzbuzz(counter)
    counter += 1
  end
end

def reverse_string(str)
  reversed_string_arr = []
  str.each_char do |char|
    reversed_string_arr.unshift(char)
  end
  reversed_string = reversed_string_arr.join
  reversed_string
end
