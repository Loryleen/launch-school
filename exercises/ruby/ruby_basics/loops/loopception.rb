# Q : The code below is a nested loop.
#   : Both loops currently loop infinitely.
#   : Modify the code so each loop stops after the first iteration.
# N : break must be added to both loops in order to stop each loop from running infinitely.
=begin

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
  end
end

puts 'This is outside all loops.'

=end


loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end

  break
end

puts 'This is outside all loops.'