Locate the ruby documentation for methods `File::path` and `File#path`. <br>
How are they different?

`File::path` is a class method which provides functionality to a class. <br>
We cannot call an instance method on the class itself.

`File#path` is an instance method that provides functionality to an instance of a class. <br>
We cannot directly call a class method on an instance. 

```ruby
# File::path 
File.path("/dev/null")    

# File#path 
f = File.new("a-file.txt")
puts f.path
```