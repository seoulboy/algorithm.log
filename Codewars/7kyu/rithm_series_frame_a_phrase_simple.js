/*
https://www.codewars.com/kata/5867d76b36959fa4a400034e/javascript

Carpe Diem! Yolo! On Fleek? Crushing it. You've got some awesome phrases that you want to hang up on your wall. The problem is that you don't have any frames laying around. So instead, you decide to write a program to create your frame.

Write a function called frame that will take two parameters as input: a phrase and optionally a character for the border of the frame.

frame("Yolo", '@');
Returns:

@@@@@@@@
@      @
@ Yolo @
@      @
@@@@@@@@
Notice that the framed phrase has a single space to the left and to the right. Also, there is an empty line both above and below the phrase.

If a second parameter is not given, assume the frame should be decorated using the * character.

You can assume that all phrases are a single line (no new line characters), and that the second parameter to the function (the frame character) is always a single character.

If an empty string is passed in, return an emtpy frame. For example:

frame("");
returns:

****
*  *
*  *
****
*/

// First Attempt - Feb 2019

function frame(phrase, ch= '*') {
  if (phrase.length ==0) {
    var topBotFrame =  ch.repeat(phrase.length+4);
    var spacesNPhrase=   '\n' + ch + " ".repeat(phrase.length+2) + ch +'\n' + ch + " ".repeat(phrase.length+2) +ch + '\n';
    
 return topBotFrame + spacesNPhrase + topBotFrame;
 }

  var topBotFrame =  ch.repeat(phrase.length+4);
  var spacesNPhrase=   '\n' + ch + " ".repeat(phrase.length+2) + ch +'\n' + ch + " " + phrase + " " + ch + '\n' + ch + " ".repeat(phrase.length+2) +ch + '\n';
 return topBotFrame + spacesNPhrase + topBotFrame;
}

// Second Attempt - Feb 2020

function frame(phrase, ch = '*') {
	let result = '';
	let leng = phrase.length + 4 - 1;
	for (let i = 0; i < 5; i++) {
		for (let j = 0; j < leng + 1; j++) {
			if (i === 0 || i === 4) {
				result += ch;
			} else if (i === 1 || i === 3) {
				if (j === 0 || j === leng) {
					result += ch;
				} else {
					result += ' ';
				}
			}
		}
		if (i === 2 && phrase.length) {
			result += `${ch} ${phrase} ${ch}`;
		}
		if (i < 4) {
			if (i === 2 && !phrase.length) {
				result = result;
			} else {
				result += '\n';
			}
		}
	}
	return result;
}
