# Q : Our predict_weather method should output a message indicating
#   : whether a sunny or cloudy day lies ahead. 
#   : However, the output is the same every time the method is invoked.
#   : Why? Fix the code so it behaves as expected.
#   :
# A : predict_weather
#   : The variable sunshine is assigned to an array consisting of two strings: 'true' or 'false'.
#   : #sample is called on this array to randomly assign a value for sunshine. 
#   :
#   : The if statement incorporates sunshine's value as its condition to determine an output message.
#   : Since sunshine's value is always a string, sunshine is evaluated as a truthy value.
#   : This is why "Today's weather will be sunny!" is always printed.  
#   :
#   : SOLUTION
#   : Rather than a string value, sunshine needs to be assigned a boolean value of true or false.
#   : sunshine = [true, false].sample


def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else 
    puts "Today\'s weather will be cloudy!"
  end
end

predict_weather