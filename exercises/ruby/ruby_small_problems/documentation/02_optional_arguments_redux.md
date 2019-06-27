Assume you have the following code:

```ruby
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```

What will each of the 4 `puts` statements print?

```ruby
require 'date'

puts Date.new                 # => 4712-01-01
puts Date.new(2016)           # => 2016-01-01
puts Date.new(2016, 5)        # => 2016-05-01
puts Date.new(2016, 5, 13)    # => 2016-05-13
```

`Date::new` is a class method. <br>
`new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date`

This signature uses `[]` to show that all of the arguments are optional. <br>
Note that the brackets are nested within this method. <br>
Items inside the outermost bracket pairs can only be omitted if all of the innermost bracket pairs are omitted as well. <br>
Hence, if you omit the `month` argument, you must omit `mday` and `start`, but you must supply `year`. <br>
From this signature, we can see that arguments to `new` can be supplied in 5 different ways.

```ruby
Date.new                              # everything defaults
Date.new(2016)                        # year is supplied. month, mday, and start use defaults
Date.new(2016, 5)                     # year and month are supplied. mday and start use defaults
Date.new(2016, 5, 13)                 # year, month, and mday are supplied. start uses default
Date.new(2016, 5, 13, Date::ITALY)    # nothing defaults
```