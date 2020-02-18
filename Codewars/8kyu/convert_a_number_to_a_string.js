/*
https://www.codewars.com/kata/5265326f5fda8eb1160004c8

We need a function that can transform a number into a string.

What ways of achieving this do you know?

Examples:
numberToString(123); // returns '123';`   
numberToString(999); // returns '999';`
*/

// First Attempt - Feb 2019 - used Number.toString() method

function numberToString(num) {
  return num.toString();
}

// Second Attempt - Feb 2020 

function numberToString(num) {
  return '' + num;
}

/*
The three approaches for converting to string are:
1. value.toString()
2. "" + value
3. String(value)

value.toString() can be OK, if you are sure that value will never be null or undefined. Otherwise, ""+value and String(value) are mostly equivalent. Which one people prefer is a matter of taste. I find String(value) more explicit.

Reference: https://2ality.com/2012/03/converting-to-string.html
*/