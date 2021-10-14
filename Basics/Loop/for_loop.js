// initialize part, test expression and incremental  expression

for (let i = 0; i < 10; i++) {
	console.log("counted:", i);
} // loops from 0 to 9

// infinite loops
// for (let i = 0; i < 10; ) {}
// for (let i = 0; ; i++) {}

// we can start from any number
for (let i = 6; i < 10; i++) {
	console.log("counted:", i);
}

let count = 0;
// need not always be an integer
for (let i = 0.1; i < 10; i += 0.1) {
	count += 1;
}

console.log("looped:", count);
