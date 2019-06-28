# MULTIPLE SIGNATURES

What do each of these `puts` statements output?

```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index ** 2}
puts a.fetch(-1)
```



## Array#fetch
`Array#fetch` has multiple signatures: <br>
`fetch(index) → obj` <br>
`fetch(index, default) → obj` <br>
`fetch(index) { |index| block } → obj`

`Array#fetch` tries to return the element at position `index`, <br>
but throws an `IndexError` exception if the referenced `index` lies outside of the array bounds. <br>
This error can be prevented by supplying a second argument, which will act as a `default` value. 

Alternatively, if a block is given it will only be executed when an invalide `index` is referenced. 

Negative values of `index` count from the end of the array.

```ruby
a = %w(a b c d e)                        # a = ["a", "b", "c", "d", "e"]
puts a.fetch(7)                          # => IndexError
puts a.fetch(7, "beats me")              # => "beats me"
puts a.fetch(7) { |index| index ** 2}    # => 49
puts a.fetech(-1)                        # => "e"
```