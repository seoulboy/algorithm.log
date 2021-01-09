/*
https://www.codewars.com/kata/57eae65a4321032ce000002d

Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.
*/

// First Attempt - Feb 2019 - using string.split(), array.map(), Math.round(), Array.join()

function fakeBin(x){
  return x.split('').map((value) => Math.round(value/10)).join('');
}

// Second Attempt - Feb 2020 - using string.split(), Array.map(), Array.join()

function fakeBin(x) {
	return x
		.split('')
		.map(value => (value < 5 ? '0' : '1'))
		.join('');
}
