/*
https://www.codewars.com/kata/515e271a311df0350d00000f

Complete the square sum function so that it squares each number passed into it and then sums the results together.

For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.
*/

// First Attempt - Feb 2019 

function squareSum(numbers){
  return numbers.map(x=> x= x*x).reduce((a,b)=> a+b, 0);
}

// Second Attempt - Feb 2020

function squareSum(numbers){
  return numbers.reduce((acc, val) => acc + val * val, 0)
}