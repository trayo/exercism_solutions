//
// This is only a SKELETON file for the 'Hello World' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  name = input || "world"
  return "Hello, " + name + "!"
};

module.exports = HelloWorld;
