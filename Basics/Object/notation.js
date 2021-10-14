const sample = {
	width: 690, // recommended to use non string
	height: 420, // it's elements are known as properties
}; // unordered

console.log(sample["width"]); // [] notation
console.log(sample.width); // dot notation

console.log(sample["width_"]); // we get undefined not a KeyError

console.log(sample.height_); // undefined
// we can't use key of type Number using the dot notation: sample.69

// adding properties

sample["id"] = "sample"; // using the [] notation
sample.title = "sample window"; // using the dot

console.log(sample);
