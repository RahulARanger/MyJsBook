const sample = 69;
const imposter = "69";

if (sample === 69) {
	console.log("Nice!");
}

if (sample == imposter) {
	// avoid this to avoid type coercion
	console.log("Hmm, Sus");
}

if (!(sample === imposter)) {
	// searches for the exact value
	console.log("Still Nice!");
}

if (sample !== imposter) {
	console.log("As said Still Nice!");
}
// !== and != has same relation as === and !=
