# 1 : Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array.each do |num|
  puts num
end


# 2 : Same as above, but only print out values greater than 5.

array.each do |num|
  if num > 5
    puts num
  end
end


# 3 : Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

odd_nums = array.select { |num| num %2 != 0 }


# 4 : Append "11" to the end of the original array. 
#     Prepend "0" to the beginning.

array.push(11)
array.unshift(0)


# 5 : Get rid of "11". And append a "3".

array.pop
array.push(3)


# 6 : Get rid of duplicates without specifically removing any one value.

arr.uniq


# 7 : What's the major difference between an Array and a Hash?
# 7A: Arrays and Hashes are collections used to store and retrieve data. 
# 7A: Arrays are an integer-indexed ordered collection of any objects. 
#     Array values are referenced using an integer. 
# 7A: Hashes are a key-value pair collection of any objects. 
#     Hash values are referenced according to their corresponding key. 


# 8 : Create a Hash using both Ruby syntax styles.

# old syntax:
person = {
  :name => "Aspen",
  :age => 5
}

# new syntax:
person = {
  name: "Aspen",
  age: 5
}


# 9 : Using the following hash:
#     Get the value of key `:b`.
#     Add to this hash the key:value pair `{e:5}`
#     Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}

h[:b]

h[:e] = 5

h.delete_if do |key, value|
  value < 3.5
end


# 10 : Can hash values be arrays? 
#      Can you have an array of hashes? 
# 10A: Yes.

# hash with array values:
person = {
  name: "Johnathan",
  nicknames: ["John", "Johnny", "Nathan"],
  pets: ["dog", "cat", "fish", "lizards"]
}

# array with hash values:
menu = [
        {
          title: "Salmon Tartare", 
          price: 12.00, 
          description: "..."
        }, 
        {
          title: "Turkey Salad", 
          price: 22.00, 
          description: "..."
        }
       ]


# 11 : Look at several Rails/Ruby online API sources and say which one you like best and why.
# 11A: I like ruby-doc.org because it is organized well, provides detailed information, and includes useful examples.


# 12 : Given the following data structures:
#      Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each do |data|
  contacts.each do |key, value|
    value[:email] = data[0]
    value[:address] = data[1]
    value[:phone] = data[2]
  end
end


# 13 : Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]


# 14 : In exercise 12, we manually set the contacts hash values one by one. 
#      Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 
#      Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
#      Note that this exercise is only concerned with dealing with 1 entry in the contacts hash.
#      As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

fields = [:email, :address, :phone]

contacts.each_with_index do |(person, hash), i|
  fields.each do |field|
    hash[field] = contact_data[i].shift
  end
end


# 15 : Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
#      Then recreate the arr array and get rid of all of the words that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |word|
  word.downcase.start_with?("s")
end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |word|
  word.downcase.start_with?("s", "w")
end


# 16 : Take the following array and turn it into a new array that consists of strings containing one word.
#      Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = a.map do |word|
  word.split(' ')
end.flatten


# 17 : What will the following program output?
# 17A: "These hashes are the same!"

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!" 
end