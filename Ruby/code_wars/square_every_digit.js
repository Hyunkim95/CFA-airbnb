function squareDigits(num){
  //may the code be with you
  var digits = (""+num).split("");
  for (var i = 0; i < digits.length; i++) {
     digits[i] = Math.pow(digits[i],2);
  }
  return parseInt(digits.join(''))
}
