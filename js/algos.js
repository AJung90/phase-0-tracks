// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// PSEUDOCODE
// -----------
	// Create a variable to store the first item in an array
	// This first item will be compared to every item in the array to find the longest length word or phrase
	// Loop through each item in the array to determine if it is longer than the item at index 0
	// Set a condition in the function to replace the item at index 0 if it is longer than that item
	// Return that variable at the end of the function

function longestString(array) {
	var longString = array[0]
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longString.length) {
		longString = array[i];
		}
	}
return (longString)
}


// DRIVER CODE
console.log(longestString(["long string", "longer string", "short string", "longerest string"]))
console.log(longestString(["Mars", "Venus", "Jupiter", "Uranus"]))
console.log(longestString(["avbaaevb", "vbweicabceavcev", "vbarvhbadivbwadvcbav", "sdcs"]))