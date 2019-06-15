# 1 : Given a hash of family members, use Ruby's select method to gather immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |key, value|
  k == :sisters || k == :brothers
end.values.flatten


# 2 : Look at Ruby's merge method. 
#     Notice that it has two versions. 
#     What is the difference between merge and merge!?
#     Write a program that uses both and illustrate the differences.
#
# 2A: MERGE:
#     merge(hash2) -> new_hash
#     merge(hash2) { |key, hash1_val, hash2_val|
#       code block...
#     } -> new_hash
#
#     merge RETURNS A NEW HASH!
#     merge lets us create a NEW hash containing the contents of hash1 and hash2. 
#     The content of both hashes will remain the same because merge does not mutate them.
#     If there are duplicate keys, merge allows us to write a code block to determine the value for the duplicate key.
#     By default, if we do not supply a way to determine the value for duplicate keys, merge will apply the value from hash1.
#
# 2A: MERGE!:
#     merge!(hash2) -> hash1
#     merge!(hash2) { |key, hash1_val, hash2_val|
#       code block...
#     } -> hash1
#
#     merge! MUTATES THE EXISTING HASH!
#     merge! adds the contents of hash2 to hash1, this mutates hash1.
#     If there are duplicate keys, merge! allows us to write a code block to determine the value for the duplicate key. 
#     By default, if we do not supply a way to determine the value for duplicate keys, merge! will use the value in hash2 to overwrite the corresponding value in hash1.


# ex) merge
h1 = { "a" => 100, "b" => 211 }
h2 = { "b" => 276, "c" => 300 }

h1.merge(h2)                                # => default:    { "a" => 100, "b" => 276, "c" => 300 }
h1.merge(h2) { |key, hash1_val, hash2_val| 
  return hash1_val - hash2_val 
}                                           # => code block: { "a" => 100, "b" => 65, "c" => 300 }


# reset hash values
h1 = { "a" => 100, "b" => 211 }


# ex) merge!
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

h1.merge!(h2)                               # => default:    { "a" => 100, "b" => 254, "c" => 300 }
h1.merge!(h2) { |key, hash1_val, hash2_val| 
  return hash1_val 
}                                           # => code block: h1 = { "a" => 100, "b" => 200, "c" => 300 }


# 3 : Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
#     Then write a program that does the same thing except prints the values. 
#     Finally, write a program that prints both.

teachers = {
  1 => "Jake Davis",
  2 => "Lindsay Smith",
  3 => "Nancy Cruz",
  4 => "Tom Tse"
}

teachers.each_key { |key|
  puts key
}

teachers.each_value { |value|
  puts value
}

teachers.each { |key, value|
  puts "#{key}: #{value}"
}


# 4 : Given the following expression, how would you access the name of the person?

person = {
  name: 'Bob', 
  occupation: 'web developer', 
  hobbies: 'painting'
}

person[:name]


# 5 : What method could you use to find out if a Hash contains a specific value in it? 
#     Write a program to demonstrate this use.

h = { 
  "a" => 100,
  "b" => 24
}

h.has_value?(100)
h.has_value?(5000)


# 6 : Given the array, write a program that prints out groups of words that are anagrams. 
#     Anagrams are words that have the same exact letters in them, but in a different order.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end


# 7 : Given the following code, what's the difference between the two hashes that were created?
# 7A: The first hash uses a symbol x as the key. 
# 7A: The second hash uses the string value of the x variable as the key.

x = "hi there"

my_hash = {x: "some value"}
my_hash2 = {x => "some value"}


# 8 : If you see this error, what do you suspect is the most likely problem?
#     NoMethodError: undefined method `keys' for Array
# 8A: There is no method called keys for Array objects.