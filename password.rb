numbers = (0..9).to_a
special_characters = ("!".."+").to_a
alphabets = ("A".."Z").to_a + ("a".."z").to_a
puts "Enter the length of the password"
password_length = gets.to_i
puts "Enter the special characters"
special_chars = gets.to_i
puts "enter the number"
number_count = gets.to_i

alphabets_count = password_length - special_chars - number_count

5.times   do
	password = numbers.shuffle.take(number_count) + alphabets.shuffle.take(alphabets_count) + special_characters.shuffle.take(special_chars)

	puts password.shuffle.join("")
end