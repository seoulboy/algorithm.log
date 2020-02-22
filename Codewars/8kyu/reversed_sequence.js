/*
https://www.codewars.com/kata/5a00e05cc374cb34d100000d/train/javascript

Get the number n (n>0) to return the reversed sequence from n to 1.

Example : n=5 >> [5,4,3,2,1]
*/

// First Attempt
const reverseSeq = n => {
	let arr = [];
	while (n != 0) {
		arr.push(n);
		n--;
	}
	return arr;
};

// Second Attempt

const reverseSeq = n => {
	return Array(n)
		.fill(0)
		.map((value, index) => index + 1)
		.reverse();
};
