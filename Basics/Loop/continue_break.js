function isPrime(number) {
	if (number < 4) {
		return true;
	}

	let prime = true;
	for (let i = 2; i < number ** 0.5 + 2; i++) {
		if (number % i == 0) {
			prime = false;
			break; // breaks out of the loop
		}
	}
	return prime;
}

const collect = [];
for (let i = 1; i < 100; i++) {
	const prime = isPrime(i);

	if (!prime) {
		continue; // we continue to the next iteration of the loop if this gets executed
	}
	collect.push(i);
}

console.log(collect);
