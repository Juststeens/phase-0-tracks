
var ptag = document.getElementsByTagName("p");

console.log(ptag[0]);

ptag[0].style.border = "5px Solid Black";

var btn = document.createElement("button");

var btntext = document.createTextNode("Dolphins");

btn.appendChild(btntext);

console.log("script is running");

document.body.appendChild(btn);


// console.log(img[0])


btn.onclick = function(){var img = document.getElementsByTagName("img");
  img[0].style.visibility = "visible"};