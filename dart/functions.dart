import 'dart:convert';
import 'package:http/http.dart' as http;

bool isOdd(int n) => n % 2 == 1;

// optional parameter
void request(String url, [String method = 'GET']) {
  print('$url $method');
}

// named parameter
defineConfig({
  bool retry = false,
  String mode = 'none',

}) {
  print('$retry $mode');
}

// closure
Map createCircle(num radius) {
  var instance = new Map();

  instance['getRadius'] = () => radius;
  instance['setRadius'] = (num value) => radius = value;
  
  return instance;
}

// async function
Future getIPAddress() async {
  final url = Uri(
    scheme: 'https',
    host: 'httpbin.org',
    path: '/ip'
  );

  final response = await http.get(url);
  String ip = jsonDecode(response.body)['origin'];
  
  return ip;
}

void main() async {
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
  
  request('https://dart.dev', 'POST');

  defineConfig(mode:'development');

  var circle = createCircle(1.0);

  circle['setRadius'](5.2);

  print(circle['getRadius']());
  print(circle);

  try {
    final ip = await getIPAddress();
    print(ip);
  } catch(e) {
    print(e);
  }

}
