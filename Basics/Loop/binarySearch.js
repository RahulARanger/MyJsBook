function binarySearch(container, key) {
	start = 0;
	end = container.length - 1;

	while (start <= end) {
		mid = start + end;
		mid /= 2;
		mid |= 0;

		if (container[mid] == key) {
			return [true, mid];
		}

		if (container[mid] > key) {
			end = mid - 1;
		} else {
			start = mid + 1;
		}
	}

	return [false, start];
}

container = [];

for (let i = 0; i < 100; i++) {
	container.push(i);
}

console.log(binarySearch(container, 0));
console.log(binarySearch(container, 69));
console.log(binarySearch(container, -1));
console.log(binarySearch(container, 100));
