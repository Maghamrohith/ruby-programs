str="rkooqdlw"
string="word"

#st1=str.split("")
def scramble(str1,str2)
	flag=""
	str2.split("").each do |letter|
		if str1.count(letter)==str2.count(letter)
			flag="true"
		else
			flag="false"
		end

	end
return flag
end
puts scramble(str,string)


