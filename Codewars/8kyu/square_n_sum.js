/*
https://www.codewars.com/kata/515e271a311df0350d00000f


*/

// First Attempt - Feb 2019 

function squareSum(numbers){
  return numbers.map(x=> x= x*x).reduce((a,b)=> a+b, 0);
}

// Second Attempt - Feb 2020

function squareSum(numbers){
  return numbers.reduce((acc, val) => acc + val * val, 0)
}