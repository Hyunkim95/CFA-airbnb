function solution(number){
  var a = Math.floor(number/3);
  var b = 0
  var c = Math.floor(number/15);

  if (number % 5 === 0){
     b= Math.floor((number - 1)/5);
  } else {
     b= Math.floor((number)/5);
  }

  var x = a/2 * (3 + 3*a);
  var y = b/2 * (5 + 5*b);
  var z = c/2 * (15 + 15*c);

  return x+y-z;
}
