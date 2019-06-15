# Q : Magdalena has just adopted a new pet!
#   : She wants to ad dher new dog, Bowser, to the pets hash.
#   : After doing do, she realizes that her dogs Sparky and Fido 
#   : have been mistakenly removed.
#   : Help Magdalena fix her code so that all three of her dogs' names
#   : will be associated with the key :dog in the pets hash.
#   :
# A : Magdalena mistakenly reassigned the value for the key :dog using =.
#   :
#   : SOLUTION
#   : pets[:dog].push('bowser')
#   : Since each value in the hash is an array, 
#   : we can apply the Array#push method to add Bowser to the list of dogs.


pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar'}

pets[:dog] = 'bowser'

p pets