var current = 2;
var last = 1;
var temporary = 0;
var sum = 0;

while (current < 4000001) {
  if (current % 2 === 0) {
    sum += current;
    temporary = current;
    current += last;
    last = temporary;
  }

  else {
    temporary = current;
    current += last;
    last = temporary;
  }
}

console.log(sum);
