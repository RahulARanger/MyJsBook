const sample = [
	"Name",
	69,
	["sample1", "sample2"],
	{ sample: "sample" },
	true,
	false,
	69.0,
];

// looping through the array elements

for (let i = 0; i < sample.length; i++) {
	console.log("index:", i, "element:", sample[i], "type", typeof sample[i]);
}

console.log();

for (let i = sample.length - 1; i >= 0; i--) {
	console.log("index:", i, "element:", sample[i], "type", typeof sample[i]);
}
