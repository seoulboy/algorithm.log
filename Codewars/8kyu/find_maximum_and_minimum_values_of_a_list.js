/*
https://www.codewars.com/kata/577a98a6ae28071780000989

Your task is to make two functions, max and min (maximum and minimum in PHP and Python) that take a(n) array/vector of integers list as input and outputs, respectively, the largest and lowest number in that array/vector.

#Examples

max([4,6,2,1,9,63,-134,566]) returns 566
min([-52, 56, 30, 29, -54, 0, -110]) returns -110
max([5]) returns 5
min([42, 54, 65, 87, 0]) returns 0
#Notes

You may consider that there will not be any empty arrays/vectors.
*/

// First Attempt - Feb 2019

var min = function(list) {
	return list.sort((a, b) => a - b)[0];
};

var max = function(list) {
	return list.sort((a, b) => b - a)[0];
};

// Second Attempt - Feb 2020

var min = function(list) {
	let result = +Infinity;
	for (val of list) {
		result = val < result ? val : result;
	}
	return result;
};

var max = function(list) {
	let result = -Infinity;
	for (val of list) {
		result = val > result ? val : result;
	}
	return result;
};
