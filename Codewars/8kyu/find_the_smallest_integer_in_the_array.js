/*
https://www.codewars.com/kata/55a2d7ebe362935a210000b2

Given an array of integers your solution should find the smallest integer.

For example:

Given [34, 15, 88, 2] your solution will return 2
Given [34, -345, -1, 100] your solution will return -345
You can assume, for the purpose of this kata, that the supplied array will not be empty.

*/

// First Attempt - Feb 2019 - Using Array.reduce / Math.min

// #1

class SmallestIntegerFinder {
	findSmallestInt(args) {
		return args.reduce((a, b) => (a < b ? a : b));
	}
}

// # 2

class SmallestIntegerFinder {
	findSmallestInt(args) {
		return Math.min(...args);
	}
}

// Second Attempt - Feb 2020 - Using Math.min

class SmallestIntegerFinder {
	findSmallestInt(args) {
		return Math.min(...args);
	}
}
