#Given an array of size n-1 and given that there are numbers from 1 to n with one missing, the missing number is to be found.
input = [1,2,3,5]
missing_no = input.first
input.each do |num|
 if num == missing_no
 	missing_no +=1
 else
 	puts missing_no

 end
end