const container = [];

// getting random data
for (let i = 0; i < 100; i++) {
	container.push((Math.random() * 100) | 0); // converting the float to an integer
}

// nested loop
for (let i = 0; i < container.length; i++) {
	for (let j = 0; j < container.length - 1; j++) {
		if (container[j + 1] < container[j]) {
			[container[j], container[j + 1]] = [container[j + 1], container[j]];
		}
	}
}

console.log(container);
