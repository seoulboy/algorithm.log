/*
https://www.codewars.com/kata/57356c55867b9b7a60000bd7/train/javascript

Your task is to create a function that does four basic mathematical operations.

The function should take three arguments - operation(string/char), value1(number), value2(number).
The function should return result of numbers after applying the chosen operation.

Examples
basicOp('+', 4, 7)         // Output: 11
basicOp('-', 15, 18)       // Output: -3
basicOp('*', 5, 5)         // Output: 25
basicOp('/', 49, 7)        // Output: 7

*/
// First Attempt - Feb 2019

function basicOp(operation, value1, value2) {
	if (operation == '+') return value1 + value2;
	else if (operation == '-') return value1 - value2;
	else if (operation == '*') return value1 * value2;
	else if (operation == '/') return value1 / value2;
}

// Second Attempt - Feb 2020 - Using eval()

function basicOp(operation, value1, value2) {
	return eval(value1 + operation + value2);
}
