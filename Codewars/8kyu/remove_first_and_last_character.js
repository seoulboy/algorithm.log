/*

https://www.codewars.com/kata/56bc28ad5bdaeb48760009b0

It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.

*/

// First Attempt - Feb 2019

function removeChar(str) {
	return str.slice(1, -1);
}

// Second Attempt - Feb 2020

function removeChar(str) {
	return str.slice(1, str.length - 1);
}
