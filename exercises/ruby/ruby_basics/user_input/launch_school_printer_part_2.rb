# Q : Modify the previous Launch School Printer exercise
#   : so it repeats itself after each input/print iteration,
#   : asking for a new number each time through.
#   : The program should keep running until the user enters q or Q.


loop do
  puts "How many output lines do you want? Enter a number >= 3 (Q to quit)"
  output_lines = gets.chomp

  if output_lines.downcase == 'q'
    break
  elsif output_lines.to_i >= 3
    output_lines.to_i.times do
      puts "Launch School is the best!"
    end
  else
    puts "Error. Please enter a number >= 3 or Q to quit"
  end
end