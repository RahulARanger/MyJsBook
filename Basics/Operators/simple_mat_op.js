let left = 69;
let right = 420;

console.log(left + right); // addition
console.log(right - left); // subtraction
console.log(left * right); // multiplication
console.log(right / left); // division
console.log(right % left); // remainder
console.log(right ** left); // power
console.log("Rahul" + " 💖 " + "Rem"); // concatenation

// js doesn't use // for floor division like in python
// we use this
console.log((right / left) | 0);
console.log(Math.floor(right / left)); // or this
