'use strict';

var Bob = function() {
  this.brain = new BobsBrain();
};

Bob.prototype.hey = function(saying) {
  if (this.brain.quiet(saying)) {
    return 'Fine. Be that way!'
  } else if (this.brain.shouting(saying)) {
    return "Whoa, chill out!"
  } else if (this.brain.asking(saying)) {
    return 'Sure.'
  } else {
    return 'Whatever.'
  };
};

var BobsBrain = function() {};

BobsBrain.prototype.quiet = function(saying) {
  return saying.trim() === '';
};

BobsBrain.prototype.shouting = function(saying) {
  if (this.isNotLetters(saying)) {
    return
  } else {
    return saying.toUpperCase() === saying;
  };
};

BobsBrain.prototype.asking = function(saying) {
  return saying.slice(-1) === '?';
};

BobsBrain.prototype.isNotLetters = function(saying) {
  return /^[^a-zA-Z]*$/.test(saying);
};

module.exports = Bob;
