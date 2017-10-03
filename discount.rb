# setting default value to the argument
def calc_total(total,loyality_points=5,discount=10)
	return total - (total*discount/100)
end
puts calc_total(100)
puts calc_total(1000,25)
puts calc_total(1000,100,30)



def cal_total_hash(details)

	total=details[:total]
	loyality_points= details[:loyality_points].nil? ? 5: details[:loyality_points]
	discount = details[:discount].nil? ? 10 : details[:discount]
	return total -(total*discount/100)
end

# we are passing a hash as an argument to the method 
puts cal_total_hash({:total=>100})
puts cal_total_hash({:total=>1000,:discount=>20})
puts cal_total_hash({:total=>1000,:loyality_points=>10,:discount=>20})
