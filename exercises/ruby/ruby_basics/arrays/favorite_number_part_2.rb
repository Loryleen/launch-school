# Q : favorites is a nested array containing three groups of names and numbers.
#   : Use Array#flatten to flatten favorites so it's no longer a nested array. 
#   : Then assign the flattened array to a variable named flat_favorites.
#   : Print its value using #p.


favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

flat_favorites = favorites.flatten

p flat_favorites