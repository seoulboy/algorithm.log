/*
https://www.codewars.com/kata/5899dc03bc95b1bf1b0000ad

Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
invert([]) == []
You can assume that all values are integers. Do not mutate the input array/list.
*/

// First Attempt - Feb 2019 - Using for loop

function invert(array) {
	let arr = [];
	for (i = 0; i < array.length; i++) {
		if (array[i] == 0) arr[i] = Math.sign(0);
		else arr[i] = Math.sign(-1) * array[i];
	}
	return arr;
}

// Second Attempt - Feb 2020 - Using Array.map()

function invert(array) {
	return array.map(value => -value);
}
