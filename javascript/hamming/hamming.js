'use strict';

exports.compute = function(strandA, strandB) {
  var difference = 0;

  if (strandA.length !== strandB.length) {
    throw "DNA strands must be of equal length.";
  };

  for (var i=0; i < strandA.length; i++) {
    if (strandA.charAt(i) !== strandB.charAt(i)) {
      ++difference;
    };
  };

  return difference;
};
