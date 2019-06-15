# Q : The code below is an infinite loop.
#   : This loop isn't useful in a real program.
#   : Modify the code so the loop stops after the first iteration.
# N : When a loop executes the break keyword, it will immediately stop iterating and exit the block.
=begin

loop do 
  puts 'Just keep printing...'
end

=end


loop do
  puts 'Just keep printing...'
  break
end