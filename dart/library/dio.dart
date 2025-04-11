import 'package:dio/dio.dart';

main() async {
  try {
    final dio = Dio();
    final response = await dio.get('https://jsonplaceholder.typicode.com/users/1');
    print(response.data);
  } catch(e) {

  }
}
