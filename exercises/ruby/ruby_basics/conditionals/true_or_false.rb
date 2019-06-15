# Q : bolean is randomly assigned as true or false.
#   : Write a ternary operator 
#   : that prints "I'm true!" if boolean equals true
#   : and prints "I'm false!" if boolean equals false.


boolean = [true, false].sample
boolean == true ? puts("I'm true!") : puts("I'm false!")