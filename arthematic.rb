def arthmetic(a,b,operator)
 case operator
 when "add"
 	return a+b
 when "subtract"
 	return a-b
 when "multiply"
 	return a*b
 when "divide"
 	return a/b
end
end
 	puts arthmetic(5,2,"add")
 	puts arthmetic(5,2,"subtract")
 	puts arthmetic(5,2,"multiply")
 	puts arthmetic(5,2,"divide")