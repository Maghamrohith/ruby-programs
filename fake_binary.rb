number=46328
binary= number.to_s.split("")
result=[]
binary.each do |n|
if n.to_i<5
	result.push(0)
else
	result.push(1)
	end
end 
puts result.join()

n1=10
n2=20
puts "enter the command (+,_,/,*)"
opt=gets.chomp
case opt
when "+" 
puts n1+n2
when "_"
puts n1-n2
else " invalid option"

end
