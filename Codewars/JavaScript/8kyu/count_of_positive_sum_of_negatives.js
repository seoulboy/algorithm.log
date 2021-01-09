/*
https://www.codewars.com/kata/576bb71bbbcf0951d5000044

Given an array of integers.

Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers.

If the input array is empty or null, return an empty array.

Example

For input [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15], you should return [10, -65].
 */

// First Attempt - Feb 2019

function countPositivesSumNegatives(input) {
	return input && input.length
		? [
				input.filter(x => x > 0).length,
				input.filter(x => x < 0).reduce((a, b) => a + b),
		  ]
		: [];
}

function countPositivesSumNegatives(input) { // O(n)
	if (input == null || input == [] || input.length == 0) return [];

	let arr = [];
	let count = 0;
	let sum = 0;
	for (let i of input) {
		if (i > 0) count++;
		else sum = sum + i;
	}
	arr.push(count);
	arr.push(sum);
	return arr;
}

// Second Attempt - Feb 2020 - uses reduce, O(2n) => O(n)

function countPositivesSumNegatives(input) {
	if (!input || !input.length) return [];

	let countPositivesReducer = (acc, val) => {
		return val > 0 ? acc + 1 : acc;
	};

	let sumNegativesReducer = (acc, val) => {
		return val < 0 ? acc + val : acc;
	};

	let countPositives = input.reduce(countPositivesReducer, 0);
	let sumNegatives = input.reduce(sumNegativesReducer, 0);

	return [countPositives, sumNegatives];
}
