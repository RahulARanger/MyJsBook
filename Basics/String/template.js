// template literals are like formatting string in python using {}

const name_ = "Name";
const age = 69;

sample = `
Here all the escape sequences can be used directly.

Name: ${name_}
Age: ${age}
`;

console.log(sample);

// we can also combine concat and template

passed = true;
another_sample = sample + `Passed: ${passed}`;

console.log(another_sample);
