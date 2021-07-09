require_relative 'spec_helper'
require_relative '../looping'

describe '#happy_new_year' do

  it 'puts out a countdown from 10 to 1, followed by "Happy New Year!' do
    hny_output = "10\n9\n8\n7\n6\n5\n4\n3\n2\n1\nHappy New Year!\n"
    expect { happy_new_year }.to output(hny_output).to_stdout
  end

end

describe '#fizzbuzz_printer' do
  
  it 'uses `puts` to print numbers from 1 to 100, replacing multiples of 3 and 5 with Fizz and Buzz' do
    fizzbuzz_output = "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n16\n17\nFizz\n19\nBuzz\nFizz\n22\n23\nFizz\nBuzz\n26\nFizz\n28\n29\nFizzBuzz\n31\n32\nFizz\n34\nBuzz\nFizz\n37\n38\nFizz\nBuzz\n41\nFizz\n43\n44\nFizzBuzz\n46\n47\nFizz\n49\nBuzz\nFizz\n52\n53\nFizz\nBuzz\n56\nFizz\n58\n59\nFizzBuzz\n61\n62\nFizz\n64\nBuzz\nFizz\n67\n68\nFizz\nBuzz\n71\nFizz\n73\n74\nFizzBuzz\n76\n77\nFizz\n79\nBuzz\nFizz\n82\n83\nFizz\nBuzz\n86\nFizz\n88\n89\nFizzBuzz\n91\n92\nFizz\n94\nBuzz\nFizz\n97\n98\nFizz\nBuzz\n"
    expect { fizzbuzz_printer }.to output(fizzbuzz_output).to_stdout
  end

end

describe '#reverse_string' do
  
  it 'reverses a string' do
    expect(reverse_string('hello')).to eq('olleh')
    expect(reverse_string('hi')).to eq('ih')
  end
  
  it 'does not use the built-in .reverse or .reverse! methods' do
    expect_any_instance_of(String).not_to receive(:reverse)
    expect_any_instance_of(String).not_to receive(:reverse!)
    reverse_string('hello')
  end
  
end
