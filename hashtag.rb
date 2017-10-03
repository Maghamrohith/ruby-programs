 def hash_tag_generator(sentance)

 if sentance.empty?
	return  false
 end
	result="#"
	sentance.split("").each do |word|
		result += word.capitalize
 end
 return (result.length>140) ? false : result
 if result.length>140
 return false
 else
 #return result
 end
 result = hash_tag_generator("hello there thanks for trying my kata")
 puts result
 puts hash_tag_generator	
	