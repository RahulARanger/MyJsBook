const result = true; // other is false
const number = 69;
const floating_ones = 69.69;
const name_ = "Rahul";
let wht;
const wht_ = null;
const wht__ = undefined; // default type for let

// umndefined means the type of a variable is not yet defined

// we have used const since we know for sure and it's type wont change

console.log(wht__, wht);
console.log(wht_); // In debugger it's known as object (bug of javascript)
console.log(wht__ == wht_);

console.log(typeof number);
console.log(typeof result);
console.log(typeof name_);

console.log(typeof wht__, typeof wht, typeof wht_);

// thing is everything in js, is a object except null but
// see below ones
console.log(typeof wht_); // for none values
