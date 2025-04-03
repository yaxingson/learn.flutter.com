bool isOdd(int n) => n % 2 == 1;

void request(String url, ) {

}

void main() {
  // anonymous function
  var add = (num x, num y) {
    return x + y;
  };

  // arrow function
  var sub = (num x, num y) => x - y;

  // iife
  ((){
    print('function invoked!');
  })();

  print(isOdd(5));
  print(add(62, 10.2));
  print(sub(67, 30));



}
