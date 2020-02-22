/*
https://www.codewars.com/kata/57eadb7ecd143f4c9c0000a3

Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

The output should be two capital letters with a dot separating them.

It should look like this:

Sam Harris => S.H

Patrick Feeney => P.F
*/

// First Attempt

function abbrevName(name) {
	return name
		.split(' ')
		.map(x => x[0])
		.join('.')
		.toUpperCase();
}

// Second Attempt - Using String.split(), Array.map(), Array.join(), String.toUpperCase()

function abbrevName(name) {
	return name
		.split(' ')
		.map(val => val[0])
		.join('.')
		.toUpperCase();
}
