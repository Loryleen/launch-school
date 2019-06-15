# Q : The daylight variable will be randomly assigned as true or false.
#   : Write a method name time_of_day that, given a boolean as an argument,
#   : prints "It's daytime!" if the boolean is true and
#   : prints "It's nighttime!" if it's false.
#   : Pass daylight into the method as the argument to determine whether
#   : its day or night. 


daylight = [true, false].sample

def time_of_day (daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)