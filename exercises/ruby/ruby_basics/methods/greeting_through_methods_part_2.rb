# Q : Write a method named greet that invokes the methods hello and world.
#   : When greet is invoked with #puts, it should output "Hello World".
#   : Make sure to add a space between "Hello" and "World",
#   : however, you're not allowed to modify hello or world.


def hello
  "Hello"
end

def world
  "World"
end 

def greet
  "#{hello} #{world}"
end

puts greet