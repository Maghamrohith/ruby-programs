# hash is an unordered,object index,collection of objects

hash={
	"televison"=>100,
	"computres"=>195,
	"mobiles"=>120,
	"homeappliances"=>123
}
# in array to add new value in to a array push,unshift,insert to remove we use pop,shift,delete,delete_at

# to add a new value and key in to a hash create a key and then assign to it

hash["ro"]=125
puts hash
# to remove in hash we use
hash.delete("mobiles")
puts hash
hash["cameras"]=1111
puts hash