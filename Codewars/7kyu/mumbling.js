/*
https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/javascript

This time no story, no theory. The examples below show you how to write function accum:

Examples:

accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"
The parameter of accum is a string which includes only letters from a..z and A..Z.
*/

// First Attempt - Feb 2019

function accum(s) {
	let arr = s.split('');

	for (i = 0; i < arr.length; i++) {
		arr[i] = arr[i].toUpperCase();
		arr[i] = arr[i] + arr[i].repeat(i).toLowerCase();
	}

	arr = arr.join('-');
	return arr;
}

// Second Attempt - Feb 2020 - Using String.split(), Array.map(), Array,join()

function accum(s) {
	let a = s
		.split('')
		.map(
			(val, index) =>
				val[0].toUpperCase() +
				val
					.repeat(index + 1)
					.toLowerCase()
					.slice(1)
		)
		.join('-');

	return a;
}
