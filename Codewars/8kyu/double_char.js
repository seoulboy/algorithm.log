/*

*/

// First Attempt - Using Array.split, Array.map, Array.join

const doubleChar = (str) => str.split("").map(c => c + c).join("");

// Second Attempt 

function doubleChar(str) {
  let newStr = ''
  for (let i = 0; i < str.length; i++) {
    newStr = newStr + str[i] + str[i]
  }
  return newStr
}