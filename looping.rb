def happy_new_year
  # your code here
  counter = 10
  until counter  == 1
    puts "Happy new year!"
    counter -= 1
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
  # your code here
end

def reverse_string(str)
  # your code here
  reversed_str = ""
  i = 0

  while i < str.length
    reversed_str = str[i] + reversed_str
    i += 1
  end

  reversed_str
end
