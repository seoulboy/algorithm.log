/*
https://www.codewars.com/kata/55d24f55d7dd296eb9000030/train/javascript

Summation
Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

For example:

summation(2) -> 3
1 + 2

summation(8) -> 36
1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

*/

// First Attempt - Feb 2019

var summation = function(num) {
	let total = 0;
	while (num > 0) {
		total = num + total;
		num--;
	}

	return total;
};

// Second Attempt - Feb 2020

var summation = function(num) {
	let total = 0;
	let current = 0;
	while (current <= num) {
		total += current;
		current++;
	}
	return total;
};
