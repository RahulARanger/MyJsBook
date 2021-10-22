## Table of Contents

- [Table of Contents](#table-of-contents)
- [Operator Precedence](#operator-precedence)
- [Reference](#reference)
- [Why -0 and +0 are different in js](#why--0-and-0-are-different-in-js)
- [Type coercion](#type-coercion)
- [Expression and Statements](#expression-and-statements)
- [Good Practices](#good-practices)
- [ECMAScript Compatibility Table](#ecmascript-compatibility-table)
- [Strict Mode](#strict-mode)
	- [Reference](#reference-1)
- [Arrays](#arrays)
- [Objects](#objects)
- [Tuple like creation](#tuple-like-creation)
- [Incrementing a variable](#incrementing-a-variable)
- [Returning Multiple Values](#returning-multiple-values)
- [Float to Integer](#float-to-integer)
- [node, npm version](#node-npm-version)

## [Operator Precedence](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence)

## Reference

-   [GitHub](https://github.com/jonasschmedtmann/complete-javascript-course)
-   [Mozilla](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Introduction)
-   [More](https://developer.mozilla.org/en-US/docs/Web/JavaScript)

## Why -0 and +0 are different in js

```javascript
console.log(-0); // prints -0
console.log(+0); // prints 0
```

```python
print(-0, +0)  # prints 0 0
```

By [Referring this](https://stackoverflow.com/questions/7223717/differentiating-0-and-0), it was more about [this](https://softwareengineering.stackexchange.com/questions/280648/why-is-negative-zero-important)

## [Type coercion](https://www.freecodecamp.org/news/js-type-coercion-explained-27ba3d9a2839/)

Some Examples:

```javascript
true + false;
12 / "6";
"number" + 15 + 3;
15 + 3 + "number"[1] > null;
"foo" + +"bar";
"true" == true;
false == "false";
null == "";
((!!"false" == !!"true"["x"]) == "x"[(1, 2, 3)]) == [1, 2, 3];
{
}
+[] + {} + [1];
!+[] + [] + ![];
new Date(0) - 0;
new Date(0) + 0;
```

## Expression and Statements

```javascript
value = 69 + 1 - 1; // this is a expression, they return some value
// below three lines are statements, they don't return any value
if (value == 69) {
	console.log(value);
}
```

## [Good Practices](https://github.com/rwaldron/idiomatic.js)

## [ECMAScript Compatibility Table](https://kangax.github.io/compat-table/es6/)

## Strict Mode

### [Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode)

-   it's a subset of javascript, so it forbids us to do certain things
-   raises errors where those errors might not appear in the silent mode (not strict mode).

We wouldn't be able to use future reserved words like "interface", "private"
and we can't

```javascript
sample = 69; // this was possible in silent mode
```

## Arrays

Object type, Mutable, Indexable, Elements can be of different types.

-   Negative Indexing is not a thing in JavaScript. Confirmed from [here](https://stackoverflow.com/questions/13618571/should-negative-indexes-in-javascript-arrays-contribute-to-array-length)
-   If we are trying to access the index outside the bounds of array doesn't raise IndexError like in python
    Example:

```javascript
const sample = [1, 2];
console.log(sample[1]); // 2
console.log(sample[2]); // undefined
```

## Objects

Objects are Javascript's Dictionary. But there's some important [difference](https://stackoverflow.com/questions/20987485/what-are-the-differences-between-python-dictionaries-vs-javascript-objects) between JavaScript's `object` and Python's `dict`.

-   [Setting Variable Value as key](https://stackoverflow.com/questions/11508463/javascript-set-object-key-by-variable)
-   No KeyError as in python, we get `undefined` same as `Array`

[Refer](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence#table) for recapping the operator precedence.

_Bracket Notation_ is formally known as **Computed Member Access** and _Dot Notation_ as **Member Access**.

## Tuple like creation

In python, we do something like this

```python
a, b = 4, 5
c, d = a, b
# python explicitly converts them to tuple
```

In javascript we do like this

```javascript
let [a, b] = [4, 5];
const [c, d] = [69, 420]; // for constant values

// swapping values
[a, b] = [b, a];
```

Here we use arrays like we use tuples in python for multiple assignments.

## Incrementing a variable

_Different from python_

```javascript
let i = 0;
console.log(++i); // 1, increment and then return
console.log(i); // 1
console.log(i++); // 1 return and then increment
console.log(i); // 2
```

## Returning Multiple Values

In Python,

```python
def sample():
	return 2, 3, 4

test = sample()
print(type(test)) # tuple
```

In JavaScript

```javascript
function sample() {
	return [2, 3, 4]; // don't leave it like 2, 3, 4
}

test = sample();
console.log(typeof test); // array
```

## Float to Integer

```python
int(6.9)
```

```javascript
let sample = 6.9;

console.log(sample | 0); // in python it would be error, since binary operators needs only int not float
console.log(Math.trunc(sample)); // 6.9
```

## node, npm version

prints the version of your node js and npm

```cmd
node -v
npm -v
```

sample installation of package using npm

```cmd
npm install live-server -g
```
