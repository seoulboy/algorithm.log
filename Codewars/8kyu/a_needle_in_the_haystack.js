/*
https://www.codewars.com/kata/56676e8fabd2d1ff3000000c

Can you find the needle in the haystack?

Write a function findNeedle() that takes an array full of junk but containing one "needle"

After your function finds the needle it should return a message (as a string) that says:

"found the needle at position " plus the index it found the needle, so:

findNeedle(['hay', 'junk', 'hay', 'hay', 'moreJunk', 'needle', 'randomJunk'])
should return "found the needle at position 5"
*/


// First Attempt - Feb 2019 - Used Array.indexOf()

function findNeedle(haystack) {
  return "found the needle at position " + haystack.indexOf("needle");
}

// Second Attempt - Feb 2020 - Used a for-loop

function findNeedle(haystack) {
  for (let i = 0; i < haystack.length; i++) {
    if (haystack[i] === 'needle') {
      return 'found the needle at position ' + i;
    }
  }
}