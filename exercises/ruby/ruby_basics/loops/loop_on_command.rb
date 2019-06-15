# Q : Modify the code below so the loop stops iterating when the user inputs 'yes'.
=begin
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
end
=end


loop do
  puts 'Should I stop looping?'
  answer = gets.chomp

  break if answer.downcase == 'yes'

  puts 'Enter "yes" to end prompt.'
end