"use strict";

const Mark = {
	name: "Mark Miller",
	mass: 78,
	height: 1.69,
	bmi: function () {
		this.BMI = this.mass / this.height ** 2;
	},
};

const John = {
	name: "John Smith",
	mass: 92,
	height: 1.95,
	bmi: function () {
		this.BMI = this.mass / this.height ** 2;
	},
};

function compare() {
	const [a, b] = Mark.bmi() > John.bmi() ? [Mark, John] : [Mark, John];
	console.log(
		`${a.name}'s BMI (${a.BMI}) is higher than the ${b.name}'s BMI (${b.BMI})`
	);
}

compare();
