# Q : The following code throws an error.
#   : Find out what is wrong and think about how to fix it.
#   :
# A : The problem with this is that the colors and things arrays have different lenths.
#   : colors.length = 8
#   : things.length = 7
#   : Since the iterations are based on colors.length,
#   : when we reach i = 8, things[i] will be nil.
#   :
#   : SOLUTION
#   : break if i >= things.length
#   : We break when we've completed iterating through the things array. 


colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black'] 
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook'] 

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

