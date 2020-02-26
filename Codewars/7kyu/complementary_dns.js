/*
https://www.codewars.com/kata/554e4a2f232cdd87d9000038

Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.

If you want to know more http://en.wikipedia.org/wiki/DNA

In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).

More similar exercise are found here http://rosalind.info/problems/list-view/ (source)

DNAStrand ("ATTGC") // return "TAACG"

DNAStrand ("GTAT") // return "CATA" 
*/

// First Attempt - Feb 2019

function DNAStrand(dna) {
	return dna
		.split('')
		.map(x => {
			if (x == 'A') return (x = 'T');
			if (x == 'T') return (x = 'A');
			if (x == 'C') return (x = 'G');
			if (x == 'G') return (x = 'C');
		})
		.join('');
}

// Second Attempt - Feb 2020

function DNAStrand(dna) {
	const dnaBox = { A: 'T', C: 'G', G: 'C', T: 'A' };

	return dna
		.split('')
		.map(value => dnaBox[value])
		.join('');
}
