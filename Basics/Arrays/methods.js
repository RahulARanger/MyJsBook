const sample = ["Orange", "Apple"];

console.log(sample.push("Banana")); // pushes and returns the new length
console.log(sample);

console.log(sample.unshift("PineApple")); // pushes the element at the beg. and returns the new length
console.log(sample);

console.log(sample.pop()); // pops the last element and returns the popped element
console.log(sample.shift()); // pops the beg. element and returns the popped element

console.log(sample);

// uses ===
console.log(sample.indexOf("Orange")); // index of first found element
console.log(sample.indexOf("PineApple")); // -1 if not found

sample.push(2);
sample.push("2");

console.log(sample);
console.log(sample.indexOf("2")); // uses === rather than ==

// again uses === rather than ==
// from ES6 ones
console.log(sample.includes("Apple")); // returns true if element is in array
console.log(sample.includes("Banana")); // else false
