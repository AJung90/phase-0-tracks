//var header = document.getElementById("1");
//document.header.style.color="2px solid blue";

//var header = document.getElementById("1").style.color = "blue";

//console.log("We're gonna wait for something to happen...");

function change_to_blue(event) {
	console.log("we hovered over the title");
	console.log(event);
	event.target.style.color = "blue";
}

var header = document.getElementById("1");
header.addEventListener("mouseover", change_to_blue);