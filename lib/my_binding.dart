import 'package:get/get.dart';
import 'package:mytabview/mycontroller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MyController(), tag: 'mycontroller');
  }
}
