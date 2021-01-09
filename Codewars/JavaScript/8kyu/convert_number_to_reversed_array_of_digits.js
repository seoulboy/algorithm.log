/*
https://www.codewars.com/kata/5583090cbe83f4fd8c000051/train/javascript

Convert number to reversed array of digits
Given a random number:

C#: long;
C++: unsigned long;
You have to return the digits of this number within an array in reverse order.

Example:
348597 => [7,9,5,8,4,3]

*/

// First Attempt - Feb 2019

function digitize(n) {
  let str = n.toString();
  let arr = [];
  for (i of str) {
    arr.unshift(parseInt(i));
  }
  return arr;
}

// Second Attempt - Feb 2020

function digitize(n) {
  return String(n).split('').map(value => Number(value)).reverse()
}