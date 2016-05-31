var colors = ["red", "blue", "orange", "yellow"];

var names = ["Ed", "Shelby", "Horace", "Jake"];

colors.push("green");

names.push("Jasmine");

console.log(colors);

console.log(names);

var names_and_colors = {}

for (var i = 0 ; i < colors.length; i ++) {
  names_and_colors[names[i]] = colors[i]
}

console.log(names_and_colors)

console.log("------------")
function Car(color, horse_power, price) {
  
    this.color = color;
    this.horse_power = horse_power;
    this.price = price;
  
    this.rev = function() {console.log("Rooom! Rooom!"); };
  
}

var fastCar = new Car("red", 300, 10000)
console.log(fastCar)
fastCar.rev();

var slowCar = new Car("yellow", 75, 150)
console.log(slowCar)
slowCar.rev();