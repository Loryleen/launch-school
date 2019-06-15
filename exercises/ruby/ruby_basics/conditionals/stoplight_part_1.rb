# Q : stoplight is randomly assigned as 'green', 'yellow', or 'red'.
#   : Write a case statement that prints: 
#   : 'Go!'' if stoplight equals 'green'
#   : 'Slow down!'if stoplight equals 'yellow'
#   : 'Stop!' if stoplight equals 'red'


stoplight = ['green', 'yellow', 'red'].sample

case stoplight 
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end