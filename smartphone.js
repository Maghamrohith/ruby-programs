var currentInventory = [ 
	{name: "HTC", stock: 25},
	{name: "Nokia", stock: 1000}, 
	{name: "Samsung", stock: 50},
	{name: "Sony", stock: 10}, 
	{name: "Apple", stock: 15}
];

var newInventory(currentInventory, newInventory){
	newInventory.forEach(function(productDetails){
		var product = currentInventory.find(function(inventory){
			return inventory.name == productDetails.name;
		});
		if(typeof product =="ündefined"){
			console.log(productDetails.name + "not found in the inventory adding it")
			currentInventory.push(productDetails);

		}else{
			console.log("updating stock of" + product.name+"by" + product.stock += productDetails.stock)
		}
	});
	return currentInventory;
}
console.log(updateInventory(currentInventory,newInventory));