/*
https://www.codewars.com/kata/5715eaedb436cf5606000381

You get an array of numbers, return the sum of all of the positives ones.

Example [1,-4,7,12] => 1 + 7 + 12 = 20

Note: if there is nothing to sum, the sum is default to 0.

*/

// Solution #1 using Array.filter

function positiveSum(arr) {
	return arr.filter(x => x >= 0).reduce((a, b) => a + b, 0);
}

// Solution #2 using Array.reduce

function positiveSum(arr) {
	return arr.reduce((a, b) => a + (b > 0 ? b : 0), 0);
}

// Solution #3 using for-loop

function positiveSum(arr) {
	let sum = 0;
	for (let i of arr) {
		if (i > 0) sum += i;
	}
	return sum;
}
