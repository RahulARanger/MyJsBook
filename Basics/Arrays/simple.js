let fruits = ["Orange", "Banana", "Apple"];

console.log(fruits, typeof fruits); // object type

// this is how objects are created
const another = new Array("Orange", "Apple", "Banana");
console.log(another);
// we can use either one

// indexing

console.log(fruits[0]);
console.log(fruits[2]); // negative indexing doesn't exist in Js

console.log(fruits[3]); // undefined, doesn't raise IndexError

console.log(fruits.length); // length of the array

const wht = ["Orange", "Red"]; // const is not applied for its elements
wht[1] = "Apple";

console.log(wht);

fruits = wht; // wht = fruits is not possible, since wht is constant array
console.log(fruits);
