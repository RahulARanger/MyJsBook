function nice() {
	return 69;
}

function add(a, b) {
	console.log(add.arguments); // arguments
	return a + b;
}

addition = add; // functions are objects in js, like in python
console.log(nice());
console.log(add(60, 9));
console.log(addition(60, 9));
