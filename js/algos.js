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


// Write a function that takes two objects and checks to see if the objects share at least one key-value pair
// PSEUDOCODE
// -----------
	// Create a function that takes two objects as parameters
	// Iterate through each object with a for loop that creates a variable for each of the objects key-value pair
	// If the objects share at least one key-value pair, return true
	// Otherwise return false

function compObjects(object1, object2) {
	for (var key in object1) {
		var value = object1[key];
		var pair = (value + key)
	for (var key_2 in object2) {
		var value_2 = object2[key_2]
		var pair_2 = (value_2 + key_2)
			if (pair == pair_2){
				return true
				console.log("true")
			} else {
				return false
				console.log("false")
			}
		}
	}
}

var Glenn = {
	name: "Glenn",
	age: 26
}

var Maggie = {
	name: "Maggie",
	age: 24
}


// DRIVER CODE
console.log(compObjects(Glenn, Maggie))
console.log(compObjects({name: "Ironman", color: "red"}, {name: "CaptainAmerica", color: "blue"}))


// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back
// PSEUDOCODE
// -----------
// The function should take an integer as as argument to determine how many random words that should be made in an array
// Create a variable with an empty array
// Create alphabet string and loop through using function that finds random letters in that string
// Loop through as many times as user inputted
// Push the result into the empty array

function randomWords(integer) {
	this.integer = integer
	var word_array = [];

	for (var i = 0; i < integer; i++) {
    	var word = "";
		var alphabet = "abcdefghijklmnopqrstuvwxyz";

// As far as I got in my code for this last randomWords function
