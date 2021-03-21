import 'package:get_storage/get_storage.dart';

class MyStorage {
  final box = GetStorage();
  saveMe(i) {
    box.write(i.toString(), i);
  }

  readMe(i) {
    box.read(i.toString());
  }
}
