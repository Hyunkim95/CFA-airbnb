function sortNumber(a,b) {
    return a - b;
}

function highAndLow(numbers){
  var digits = (""+numbers).split(" ").sort(sortNumber);
  return digits[digits.length-1] + " " + digits[0]
}
