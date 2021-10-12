// falsy values: 0, undefined, null, "", NaN
// Truthy Values: Non zero and non empty strings
console.log(Boolean(0), Boolean(undefined), Boolean(null), Boolean(Number.NaN));

if (!(0 || undefined || null || Number.NaN || "")) {
	console.log("Falsy Values");
}

if ("sample" || 69) {
	console.log("Truthy Values");
}
