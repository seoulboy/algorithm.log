/*

*/

// First Attempt

function rentalCarCost(d) {
	return d >= 7 ? d * 40 - 50 : d >= 3 ? d * 40 - 20 : d * 40;
}

// Second Attempt - Feb 2020

function rentalCarCost(d) {
	if (d >= 3) {
		if (d >= 7) {
			return d * 40 - 50;
		}
		return d * 40 - 20;
	}
	return d * 40;
}
