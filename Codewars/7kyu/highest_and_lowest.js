/*
https://www.codewars.com/kata/554b4ac871d6813a03000035

In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

Example:

highAndLow("1 2 3 4 5");  // return "5 1"
highAndLow("1 2 -3 4 5"); // return "5 -3"
highAndLow("1 9 3 4 -5"); // return "9 -5"
Notes:

All numbers are valid Int32, no need to validate them.
There will always be at least one number in the input string.
Output string must be two numbers separated by a single space, and highest number is first.
*/

// First Attempt - Feb 2019 - sort numbers and return the first and last item in the array

function highAndLow(numbers) {
	let arr = numbers.split(' ').sort((a, b) => b - a);
	arr = [arr[0], arr[arr.length - 1]];
	return arr.join(' ');
}

// Second Attempt - Feb 2020 - Using Math.max() and Math.min()

function highAndLow(numbers) {
	const numArray = numbers.split(' ').map(value => +value);
	return `${Math.max(...numArray)} ${Math.min(...numArray)}`;
}
