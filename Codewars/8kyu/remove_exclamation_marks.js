/*
https://www.codewars.com/kata/57a0885cbb9944e24c00008e/train/javascript

Write function RemoveExclamationMarks which removes all exclamation marks from a given string.
*/

// First Attempt - Feb 2019

function removeExclamationMarks(s) {
	return s.split('!').join('');
}

// Second Attempt - Feb 2020

function removeExclamationMarks(s) {
	while (s.indexOf('!') >= 0) {
		s = s.replace('!', '');
	}
	return s;
}
