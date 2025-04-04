// generics function
add<T extends num>(T x, T y) {
  return x + y;
}

// generics class
class Array<T> {}

// generics interface
abstract class Storage<T> {
  void setItem(String key, T value);
  T? getItem(String key);
}

class LocalStorage<T> implements Storage<T> {
  var items = Map<String, T>();

  @override
  setItem(String key, T value) {
    items[key] = value;
  }

  @override
  T? getItem(String key) {
    return items[key];
  }
}

main() {
  print('${add<int>(6, 3)}');
  print(Array<String>().toString());

  var mimeTypes = <String, String>{
    'html':'text/html',
    'js':'application/json',
  };

  mimeTypes['png'] = 'image/png';

  print(mimeTypes);

  var storage = LocalStorage();

  storage.setItem('username', 'Hilda Reynolds');
  storage.setItem('age', 25);

  print(storage);
  print(storage.getItem('username'));


}
