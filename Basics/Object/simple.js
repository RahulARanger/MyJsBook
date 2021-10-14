const age = 69;

const sample = {
	// same as python's dict
	a: 1,
	b: 2,
	name: "foo",
	age: "replaced", // same key gets replaced
	age: "age", // note this is same as key "age" not the variable age
};

console.log(sample, typeof sample);

sample[age] = "age"; // this is how we use variable keys

console.log(sample, sample[age], sample["age"]);
