# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0){|sum, num| sum + num}
  #arr.inject(0, :+)
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1
  arr.sort!{|x,y| y<=>x}
  return arr[0]+arr[1]
end

def sum_to_n? arr, n
  return false if(arr.nil? || arr.empty?)
  hash = Hash.new
  arr.each do |val|
    if hash.key? val
      return true
    else hash [n-val] = val
    end
  end
  return false
end

# Part 2

def hello(name)
  if name.is_a? String
    "Hello, #{name}"
  end
end

def starts_with_consonant? s
  constant = /^[^aeiou\d\W_]/i
  return true if constant.match(s)
end

def binary_multiple_of_4? s
  test = s.is_a?(String) && s.match(/^[0-1]+$/)!= nil && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f",@price)
  end
end
