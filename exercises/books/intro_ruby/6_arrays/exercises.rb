# 1 : Below we have given you an array and a number. 
#     Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include? number
  puts "#{number} appears in the array"
end


# 2 : What will the following programs return? 
#     What is the value of arr after each program?
 
arr = ["b", "a"]
arr = arr.product(Array(1..3))   # => [["b", 1] ["b", 2] ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last) # => returns: 1 , arr = [["b"] ["b", 2] ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)]) # => # [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last) # => returns: [1, 2, 3], arr = [["b"], ["a", [1, 2, 3]]]


# 3 : How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

arr.each do |array|
  if array.include? "example"
    i = array.index("example")
    puts array[i]
    return array[i]
  end
end


# 4 : What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) # => 3
arr.index[5] # => NoMethodError (undefined method '[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 1])
arr[5]       # => 8


# 5 : What is the value of a, b, and c in the following program?

string = "Welcome to America!"

a = string[6]  # => "e"
b = string[11] # => "A"
c = string[19] # => nil


# 6 : You run the following code and get the following error message:
#     TypeError: no implicit conversion of String into Integer
#       from (irb):2:in `[]='
#       from (irb):2
#       from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
#     What is the problem and how can it be fixed?
# 6A: TypeError indicates an error of trying to convert objects that are not compatible. 
#     In this case, the programmer is trying to change the value of 'margaret' to 'jody'.
#     names['margaret'] is incorrect because if we wanted to locate the value for margaret, we locate its index and place that integer in [].
#     One of the ways to do this is to use the index method: names.index("margaret")
#     We can then create a variable to hold that index: i = names.index("margaret")
#     Now we can re-assign that value: names[i] = "jody"

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody' 


# 7 : Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. 
#     You should have two arrays at the end of this program: the original array and the new array you've created. 
#     Print both arrays to the screen using the p method instead of puts.

nums = [2, 4, 6, 8]

nums_plus_two = nums.map do |num|
  num += 2
end

p nums
p nums_plus_two