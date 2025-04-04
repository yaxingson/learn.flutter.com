abstract class Reader {
  int bufferSize = 1024;

  String read();
  List<String> readlines();
}

abstract class Writer {
  int write(String data);
}

class File implements Reader, Writer {
  @override
  int bufferSize;
  
  File(): bufferSize = 1024;

  String read() {
    return '';
  }

  List<String> readlines() {
    return [];
  }

  int write(String data) {
    return data.length;
  }

}

main() {
  

}
