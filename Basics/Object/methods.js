const sample = {
	width: 690,
	height: 420,
	title: "sample window",
	id: "sample",
	template: function () {
		console.log(
			this // we can use [] or . notation to access it's elements
		); // returns the sample, current object
		return `^${this.id}^{size: ${this.width} X ${this.height}}, title: ${this.title}}`;
	},

	lambdaTemplate: () => {
		console.log(this, sample); // we can't use this in lambda / arrow functions

		// not recommended to use lambda functions that uses object's properties
		return `^${sample.id}^{size: ${sample.width} X ${sample.height}}, title: ${sample.title}}`;
	},

	compute: function () {
		if (!this.area) {
			this.area = this.width * this.height; // creating a new property inside the function using this.
		}

		return this.area;
	},
};

// we can also store the function expression or the arrow functions inside the js's object

console.log(sample.template()); // .
console.log(sample["template"]()); // []

console.log(sample.lambdaTemplate());
// this is like the self in python

// make sure to follow Don't repeat yourself rule

console.log(sample.area);
console.log(sample.compute());
console.log(sample.compute());

// here we can create any methods for the object by creating properties.
// Arrays are special objects which just has pre-defined methods
