// 7.2 MPS

// Build an array with 4 colors 
// Build an array with 4 horse names


var colors = ["Blue", "Purple", "Green", "Yellow"];
var names = ["Ed", "Al", "Bo", "Joe"];

colors.push("Black");
names.push("Bob");

//console.log(colors);
// console.log(names);

// R1 
// Key = names, Values = colors
// object is going to look like horses = {names: colors}
// loop through index, each index number would push the name/color combination into the object

var horses = {};

for (var i=0; i < colors.length; i++){

horses[names[i]] = colors[i] };

//console.log(horses);

// R2 - Cars


function Car(model, year, color, fwdrive) {
  // console.log("This our new car!", this);

  this.model = model;
  this.year = year;
  this.color = color;
  this.fwdrive = fwdrive

  this.engine = function() { console.log(":::Revs Engine:::"); };
  this.horn = function () { console.log("HONK!!!");};
  this.terrain = function(){
    if (this.fwdrive) {
      console.log("This car can go off-road!!");
    } else {
      console.log("This car should probably stick to the streets...");
    } 
  };

  // console.log("New Car complete... Beep Bop Boop!");
}

console.log("--------");
var newCar = new Car("Audi", 2014, "Purple", true);
console.log(newCar);
newCar.engine();
newCar.horn();
newCar.terrain();
console.log("--------");

console.log("--------");
var newCar = new Car("Ford", 2014, "Red", false);
console.log(newCar);
newCar.engine();
newCar.terrain();
console.log("--------");

console.log("--------");
var newCar = new Car("Dodge", 2014, "Green", false);
console.log(newCar);
newCar.horn();
newCar.terrain();
console.log("--------");

// Release 3: Research on Your Own
// FIND THE THING
// If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)
// Are there advantages to using constructor functions to create objects? Disadvantages? 
// 
// 