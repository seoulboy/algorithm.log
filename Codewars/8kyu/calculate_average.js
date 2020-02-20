/*
https://www.codewars.com/kata/57a2013acf1fa5bfc4000921/train/javascript

Write function avg which calculates average of numbers in given list.
*/

// First Attempt

function find_average(array) {
  return array.reduce((a,b) => a + b,0)/array.length
}

// Second Attempt 

function find_average(array) {
  return array.reduce((a,b) => a + b, 0) / array.length
}