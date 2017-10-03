def createphonenumber(numbers)
return"(#{numbers[0..2].join()})#{numbers[3..5].join()}-#{numbers[6..9].join()}"


end


puts createphonenumber([1,2,3,4,5,6,7,8,9,0])