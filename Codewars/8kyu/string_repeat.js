/*
https://www.codewars.com/kata/57a0e5c372292dd76d000d7e

Write a function called repeatString which repeats the given String src exactly count times.

repeatStr(6, "I") // "IIIIII"
repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"

*/

// First Attempt Feb 2019

function repeatStr(n, s) {
	let i = 0;
	let str = '';
	while (i < n) {
		str = str + s;
		i++;
	}
	return str;
}

// New Attempt Feb 2020

function repeatStr(n, s) {
	let str = '';

	for (let i = 0; i < n; i++) {
		str += s;
	}

	return str;
}
