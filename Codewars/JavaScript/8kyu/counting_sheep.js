/*
https://www.codewars.com/kata/54edbc7200b811e956000556

Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

For example,

[true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true]
The correct answer would be 17.

Hint: Don't forget to check for bad values like null/undefined

*/

// First Attempt - Feb 2019

function countSheeps(arrayOfSheep) {
	let count = 0;
	for (let i of arrayOfSheep) if (i == true) count++;

	return count;
}

// Second Attept - Feb 2020

function countSheeps(arrayOfSheep) {
	let reducer = (acc, val) => {
		return val ? ++acc : acc;
	};
	let total = arrayOfSheep.reduce(reducer, 0);
	return total;
}
