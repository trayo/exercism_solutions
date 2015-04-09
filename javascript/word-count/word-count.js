'use strict';

var words = function(words) {
  var results = {};

  words.split(/\s+/).forEach(function(word) {
    if (word in results && isNotFunction(results[word])) {
      ++results[word];
    } else {
      results[word] = 1;
    };
  });

  return results;
};

var isNotFunction = function(propertyToCheck) {
  return Object.prototype.toString.call(propertyToCheck) !== '[object Function]';
}

module.exports = words;
