/*
https://www.codewars.com/kata/5467e4d82edf8bbf40000155/train/javascript

Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

Examples:
Input: 21445 Output: 54421

Input: 145263 Output: 654321

Input: 123456789 Output: 987654321
*/

// First Attempt - Feb 2019

function descendingOrder(n) {
	return Number(
		n
			.toString()
			.split('')
			.sort((a, b) => b - a)
			.join('')
	);
}

// Second Attempt - Feb 2020

function descendingOrder(n) {
	return +('' + n)
		.split('')
		.sort((a, b) => b - a)
		.join('');
}
