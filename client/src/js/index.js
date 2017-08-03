document.body.onload = addElement;

function addElement () { 
  let currentDiv = document.getElementById("front"); 
  var newDiv = document.createElement("div"); 
  var newContent = document.createTextNode("I am from js"); 
  newDiv.appendChild(newContent); //add the text node to the newly created div. 
  currentDiv.appendChild(newDiv)

  const host = window.location.host

  const API = 'http://' + host + '/clojure';
  fetch(API).then(function(res){
    res.json().then(body => {
      console.log(body)
      console.log("K")
       var newDiv = document.createElement("div"); 
       var newContent = document.createTextNode(body.message)
       newDiv.appendChild(newContent); //add the text node to the newly created div. 
       currentDiv.appendChild(newDiv)
    });
  })
}