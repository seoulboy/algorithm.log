/*
https://www.codewars.com/kata/56b1f01c247c01db92000076

Given a string, you have to return a string in which each character (case-sensitive) is repeated once.

doubleChar("String") ==> "SSttrriinngg"

doubleChar("Hello World") ==> "HHeelllloo  WWoorrlldd"

doubleChar("1234!_ ") ==> "11223344!!__  "
Good Luck!
*/

// First Attempt - 

const doubleChar = str =>
	str
		.split('')
		.map(c => c + c)
		.join('');

// Second Attempt - Using String.split(), Array.map(), Array.join()

function doubleChar(str) {
	let newStr = '';
	for (let i = 0; i < str.length; i++) {
		newStr = newStr + str[i] + str[i];
	}
	return newStr;
}
