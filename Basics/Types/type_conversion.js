const sample = "69";

console.log(Number(sample)); // manual type conversion

let check = Number.NaN;
console.log(check, Number("not a number"), Number("a") == check); //don't try to compare not a number values

console.log(String(69), typeof String(69));

// same as python for boolean type conversions
console.log(
	Boolean(0),
	Boolean(-10),
	Boolean(100),
	Boolean("wht"),
	Boolean("")
);

console.log(String(false), String(true), typeof String(true));

// we can't convert types to undefined or none
