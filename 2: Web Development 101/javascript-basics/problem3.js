var n=600851475143;
var largestPrime;
for(i = 0; i < n; i++){
  if (n % i===0){
    n = n/i;
  }
}
console.log(n);
