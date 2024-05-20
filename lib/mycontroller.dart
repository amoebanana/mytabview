import 'package:get/get.dart';

class MyController extends GetxController {
  Rx<int> _curPage = 0.obs;

  Rx<int> get curPage => _curPage;

  void changeCurPage(int index){
    _curPage.value = index;
  }

}