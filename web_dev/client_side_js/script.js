function hideImage(){
	document.getElementById("lizard-photo").style.visibility = "hidden";
}

function revealImage() {
	document.getElementById("lizard-photo").style.visibility = "visible";
}

//document.getElementById("lizard-photo").addEventListener("click",function(){
//	alert("Hello World!");
//});

// CREATING AN UL WITH JAVASCRIPT
var newItem = document.createElement("LI");       // Create a <li> node
var textnode = document.createTextNode("Water");  // Create a text node
document.getElementById("lizard-photo").addEventListener("click",function(){
	var newList = document.createElement('ul');
	var lizardParts = ["Head","Legs","Eyes","Tail"];
	document.body.appendChild(newList);

	for(var i = 0; i <lizardParts.length; i++){
		var listItem = document.createElement('li');
		newList.appendChild(listItem);
		listItem.innerHTML = listItem.innerHTML + lizardParts[i];
	}
});

