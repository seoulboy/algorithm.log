/*
https://www.codewars.com/kata/54ff3102c1bad923760001f3

Return the number (count) of vowels in the given string.

We will consider a, e, i, o, and u as vowels for this Kata.

The input string will only consist of lower case letters and/or spaces.
*/

// First Attempt - Feb 2019

function getCount(str) {
	var vowelsCount = 0;

	for (let i of str) {
		if (i == 'a' || i == 'e' || i == 'i' || i == 'o' || i == 'u')
			vowelsCount++;
	}

	return vowelsCount;
}

// Second Attempt - Feb 2020

function getCount(str) {
	let vowelsCount = 0;
	const vowels = { a: 1, e: 1, i: 1, o: 1, u: 1 };
	str.split('').forEach(value => vowels[value] && vowelsCount++);
	return vowelsCount;
}
