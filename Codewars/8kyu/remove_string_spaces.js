/*
https://www.codewars.com/kata/57eae20f5500ad98e50002c5

Simple, remove the spaces from the string, then return the resultant string.

*/

// First Attempt - Feb 2019 - Using Array.reduce

function noSpace(x) {
	return x.split(' ').reduce((a, b) => a + b);
}

// Second Attempt - Feb 2020 - Using String.split & Array.join

function noSpace(x) {
	return x.split(' ').join('');
}
