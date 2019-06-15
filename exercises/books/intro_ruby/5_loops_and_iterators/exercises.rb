# 1 : What does the each method in the following program return after it is finished executing?
# 1A: It returns: x = [1, 2, 3, 4, 5] 

x = [1, 2, 3, 4, 5]

x.each do |a|
  a + 1
end 


# 2 : Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". 
#     Each loop can get info from the user. 

user_answer = ""

while user_answer != "STOP" do
  puts "Here is a random number: #{rand 0..500} \n\n"

  puts "How about another random number? 
  'YES' to continue
  'STOP' to exit \n\n"

  user_answer = gets.chomp.upcase

  if user_answer != "YES" && user_answer != "STOP"
    puts "You did not enter a valid answer, so let's start again."
    puts "---------- E N D ----------- \n\n"
    next
  end
end


# 3 : Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

pet_names = ["Spot", "Fluffy", "Oinkston", "Tweety"]

pet_names.each_with_index do |name, i|
  puts "index #{i} has the value of #{name}"
end


# 4 : Write a method that counts down to zero using recursion.

def count_to_zero(num)
  puts num
  
  if num > 0
    count_to_zero(num - 1)
  elsif num < 0
    count_to_zero(num + 1)
  end
end

count_to_zero(4)
count_to_zero(-10)