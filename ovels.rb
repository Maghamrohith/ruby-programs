sentance = "Now is the time for all good people"
vowels = {
	:a => 0,:e => 0,:i => 0, :o =>0,:u => 0
}
letters= sentance.downcase.split("")
puts "#{letters}"
letters.each do |letter|
case letter
	when "a"
		vowels[:a] += 1
	when "e"
		vowels[:e] += 1
	when "i"
		vowels[:i] += 1
	when "o"
		vowels[:o] += 1
	when "u"
	vowels[:u] += 1
end
end
puts "total vowels : #{vowels.vales.inject(:+)}"
puts "uniq vowels : #{vowels.select {|k,v| v !=0}.keys}"
puts "total vowel count #{vowels}"
