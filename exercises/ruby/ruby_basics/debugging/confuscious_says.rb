# Q : You want to have a small script delivering motivational quotes,
#   : but with the following code you run into a very common error message: 
#   : no implicit conversion of nil into String (TypeError).
#   : What is the problem and how can you fix it?
#   :
# A : Since #get_quote does not have an explicit return statement,
#   : the return value is the evaluated result of the last line executed.
#   : The last line is an if statement, which returns the evaluated result
#   : of the branch whose condition evaluates to true, 
#   : or nil if there is no such branch.
#   :
#   : SOLUTION
#   : Add explicit return statements.
#   : Or refactor the three if statements into one and rely on the implicit return value.


def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts "\"#{get_quote('Confucius')}\""