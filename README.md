# Control Flow: Loops

## Learning Goals

- Write basic loops with the `while` construct
- Use the `#times` method to run a block of code a specified number of times

## Introduction

In this lesson, we'll show how to use control flow to run the same line(s) of
code multiple times in a loop. Make sure to follow along by running IRB and
experimenting with the example code.

## Basic Loops in Ruby

In JavaScript, there are a few common approaches for control flow that will
allow us to run the same lines of code over and over again. The most basic tool
is the `while` loop, which works like this in JavaScript:

```js
let i = 0;
while (i < 5) {
  console.log("Looping!");
  i++;
}
```

Ruby has a `while` construct too, which works much the same way:

```rb
i = 0
while i < 5
  puts "Looping!"
  i += 1
end
```

Ruby also has an `until` loop, which acts like the opposite of a while loop, and
will run a block of code **until** some condition is true:

```rb
counter = 0
until counter == 10
  puts "Counting!"
  counter += 1
end
```

## Looping with `#times`

JavaScript has a `for` loop, which is commonly used to run some condition a set
number of times:

```js
for (let i = 0; i < 10; i++) {
  console.log(`Looping!`);
  console.log(`i is: ${i}`);
}
```

While Ruby does also have a `for` loop, you will see them used less often by
Rubyists, since Ruby has a few other more expressive ways to run code in a loop.
One such approach is to use the `#times` loop:

```rb
10.times do |i|
  puts "Looping!"
  puts "i is: #{i}"
end
```

The syntax here is quite different from JavaScript, so let's break it down.

`#times` is a [method in the Integer class][times method] that can be called on a
number. It takes a block of code as an argument, starting with `do` and ending
with `end`, and will run the code inside that block in a loop. You can
optionally provide a **block parameter**, which in the example above, is
represented by the `i` variable within the pipes: `|i|`.

Between the `do` and the `end`, you write whatever code you want to run in the
loop.

Each time Ruby runs the loop, it will assign a new value for the block parameter
`i`, which will start at 0 and end at 9 (since we're running this loop 10
times):

```rb
10.times do |i|
  puts "i is: #{i}"
end
# i is: 0
# i is: 1
# i is: 2
# i is: 3
# i is: 4
# i is: 5
# i is: 6
# i is: 7
# i is: 8
# i is: 9
```

In addition to the `do` and `end` syntax, Ruby also allows you to use curly
parentheses to define blocks. This syntax is commonly used for one-line blocks:

```rb
10.times { |i| puts "i is: #{i}" }
```

Ruby blocks are just about as important a feature of the Ruby language as
callbacks are in JavaScript (and they serve similar purposes). They're an
incredibly powerful tool, and you'll see them used in many different scenarios,
including writing loops, so make sure to familiarize yourself with this syntax!

[times method]: https://ruby-doc.org/core-2.7.3/Integer.html#method-i-times

## Looping with `#each`

The last looping construct we'll discuss in Ruby is the `#each` method. The
`#each` method can be used with a few different data types, including arrays and
objects (as we'll see later), but one common use case for the `#each` method is
to use it with a [Range][ruby range]:

```rb
(1..20).each do |num|
  puts num
end
```

This can be helpful for running a loop of a specified set of numbers, starting
with any value you like! Compare this to equivalent code in JavaScript using a
`for` loop:

```js
for (let i = 1; i <= 20; i++) {
  console.log(i);
}
```

You can see how methods like `#each` help us write cleaner code that more clearly
expresses our intent.

[ruby range]: https://www.rubyguides.com/2016/06/ruby-ranges-how-do-they-work/

## Instructions

Time to get some practice! Write your code in the `looping.rb` file. Run
`learn test` to check your work. Your goal is to practice using control flow in
Ruby to familiarize yourself with the syntax. There is a JavaScript version of
the solution for each of these deliverables in the `js/index.js` file you can
look at (but if you want an extra challenge, try solving them in Ruby without
looking at the JavaScript solution).

Write a method `#happy_new_year` using a `while` or `until` loop that outputs
numbers starting at 10 and counting down to 1. After reaching 1, print out
"Happy New Year!"

```rb
happy_new_year
# => 10
# => 9
# => 8
# => ...
# => 1
# => Happy New Year!
```

Write a method `#reverse_string` that takes one argument, a string, and reverses
it. Don't use the built-in `.reverse` method. Instead, loop through the
characters in the input string and reverse it.

```rb
reverse_string("hello")
# => "olleh"
```

Write a method `#fizzbuzz_printer` that prints the numbers from 1 to 100. For
multiples of three, print "Fizz" instead of the number and for the multiples
of five print "Buzz". For numbers which are multiples of both three and five,
print "FizzBuzz".

```rb
fizzbuzz
# 1
# 2
# Fizz
# 4
# Buzz
# Fizz
# 7
# ...
# 14
# FizzBuzz
# 16
# ...
# 100
```

## Resources

- [Ruby Loops](https://www.rubyguides.com/ruby-tutorial/loops/)
- [Mastering Ruby Blocks](https://mixandgo.com/learn/ruby-blocks)
