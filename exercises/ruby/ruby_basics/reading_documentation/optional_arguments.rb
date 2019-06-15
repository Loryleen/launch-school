# Q : Assume you have the following code:
#   : What will each of the 3 puts statements print?
# A : puts s.split.inspect
#   : ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
# A : puts s.split(',').inspect
#   : ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
# A : puts s.split(',', 2).inspect
#   : ["abc def ghi", "jkl mno pqr,stu vwx yz"]


s = 'abc def ghi,jkl mno pqr,stu vwx yz'

puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect