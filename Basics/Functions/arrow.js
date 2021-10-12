// similar to python's lambda function
const add = (a, b) => a + b; // easier and faster to write

console.log(add(60, 9));

// we can also use the block statements this is how it differs from lambda func in python
const big_one = (first, second = "default") => {
	// same rule as python for default arg
	console.log("First Message: " + first);
	console.log("Second Message: " + second);
	console.log("concat: " + add(first, second));
};

big_one("Hello there", "hehe");
big_one("yes big one");
