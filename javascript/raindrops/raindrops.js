'use strict';

var Raindrops = function() {};

var dropSounds = {
  Pling: 3,
  Plang: 5,
  Plong: 7
};

Raindrops.prototype.convert = function(number) {
  var result = "";

  for (var sound in dropSounds) {
    if (number % dropSounds[sound] === 0) {
      result += sound
    }
  };

  return result || number.toString();
};

module.exports = Raindrops;
