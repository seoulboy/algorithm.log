/*
codewars.com/kata/55908aad6620c066bc00002a

Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

Examples input/output:

XO("ooxx") => true
XO("xooxx") => false
XO("ooxXm") => true
XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
XO("zzoo") => false
*/

// First Attempt - Feb 2019

function XO(str) {
	let x = 0;
	let o = 0;
	str = str.toLowerCase();
	str = str.split('');
	for (let i of str) {
		i == 'x' ? x++ : i == 'o' ? o++ : undefined;
	}

	return x == o;
}

// Second Attempt - Feb 2020

function XO(str) {
	let count = 0;
	for (char of str) {
		if (char.toLowerCase() === 'x') {
			count--;
		} else if (char.toLowerCase() === 'o') {
			count++;
		}
	}
	return count === 0;
}
