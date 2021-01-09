/*
https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9

Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.
*/

// First Attempt - Feb 2019 - Using String.split(), Array.reduce()

function findShort(s){
  return s.split(' ').reduce( (a,b) => a.length < b.length ? a = a: a = b ).length
}

// Second Attempt - Feb 2020 - using Math.min(), String.split(), Array.map()

function findShort(s) {
	return Math.min(...s.split(' ').map(word => word.length));
}
