# Q : We started writing an RPG game, but have run into an error message.
#   : Find the problem and fix it.
#   :
# A : ERROR
#   : `merge': no implicit conversion of nil into Hash (TypeError)
#   : TypeError occurs because character_classes[input] references nil.
#   : Remember that user input is always a String. 
#   : Our character_classes uses symbols as keys.
#   : We need to convert input to a symbol.
#   :
#   : ERROR
#   : Hash#merge creates a new array.
#   : The values for the player object are not mutated.
#   : We need to update our player stats.
#   :
#   : SOLUTION
#   : player.merge!(character_classes[input.to_sym])
#   : Calling Hash#merge! on player will transform the data of the player object.
#   : Calling String#to_sym on the user input helps our program 
#   : identify the key whose value needs to be reassigned.


# Each player starts with the same basic stats.
player = {
  strength: 10,
  dexterity: 10,
  charisma: 10,
  stamina: 10
}

# Then the player picks a character class and gets an upgrade accordingly.
character_classes = {
  warrior: { strength: 20 },
  thief: { dexterity: 20 },
  scout: { stamina: 20 },
  mage: { charisma: 20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge(character_classes[input])

puts 'Your character stats:'
puts player