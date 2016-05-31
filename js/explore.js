// Declare a function that takes a string as a parameter and reverses the string 
// PSEUDOCODE
// -----------
// Create a function that takes a string and splits it into an array
// Take all the items in the array and reverse their order within the array
// Join the items back together into a string
// Within the function, return the new string


function reverse(string) {
	return string.split("").reverse().join("");
}

// DRIVER CODE
// ------------
var wordReverse = reverse("hello")
// Print the variable if the condition is true
if (1 == 1) {
  console.log(wordReverse);
}