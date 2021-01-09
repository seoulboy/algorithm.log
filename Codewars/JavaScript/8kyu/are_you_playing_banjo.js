/*


*/

// First Attempt

function areYouPlayingBanjo(name) {
	if (name.split('')[0] == 'R' || name.split('')[0] == 'r')
		return name + ' plays banjo';
	else return name + ' does not play banjo';
}

// Second Attempt

function areYouPlayingBanjo(name) {
	return (
		name +
		(name[0].toUpperCase() === 'R'
			? ' plays banjo'
			: ' does not play banjo')
	);
}
