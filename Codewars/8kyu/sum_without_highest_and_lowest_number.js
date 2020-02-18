/*
https://www.codewars.com/kata/576b93db1129fcf2200001e6

Sum all the numbers of the array (in F# and Haskell you get a list) except the highest and the lowest element (the value, not the index!).
(The highest/lowest element is respectively only one element at each edge, even if there are more than one with the same value!)

Example:

{ 6, 2, 1, 8, 10 } => 16
{ 1, 1, 11, 2, 3 } => 6

If array is empty, null or None, or if only 1 Element exists, return 0.
Note:In C++ instead null an empty vector is used. In C there is no null. ;-)


-- There's no null in Haskell, therefore Maybe [Int] is used. Nothing represents null.
Have fun coding it and please don't forget to vote and rank this kata! :-)

I have created other katas. Have a look if you like coding and challenges.

*/

// First Attempt - Feb 2019

// # 1
function sumArray(array) {

  return array ? array.sort( (a,b) => a - b ).slice(1,-1).reduce( (x,y) => x + y,0) : 0;
}

// #2
function sumArray(array) {
  
  if( array == null || array.length == 0 || array == [] || array.length == 1) return 0;
  
  let total = 0;
  let lowest = array[0];
  let highest = array[0];
  
  for (i of array) {
    total = i + total;
    if ( i > highest) highest = i;
    if ( i < lowest) lowest = i;
  }
  total = total - highest - lowest;
  return total;
}

// Second Attempt - Feb 2020 - Using Math.max & Math.mi

function sumArray(array) {
	if (!array || !array.length) return 0;
	let highest = Math.max(...array);
	let lowest = Math.min(...array);

	return array.reduce((acc, val) => {
		if (val === highest) {
			highest = null;
			return acc;
		} else if (val === lowest) {
			lowest = null;
			return acc;
		} else {
			return acc + val;
		}
	}, 0);
}
