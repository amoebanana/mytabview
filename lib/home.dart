import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytabview/mycontroller.dart';

class MyHome extends StatelessWidget {
  MyHome({super.key});
  MyController controller = Get.find(tag: 'mycontroller');

  List<Widget> _tabs = [
    Text('Home'),
    Text('Business'),
    Text('School'),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      body: Center(
        child: _tabs[controller.curPage.value],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.home), label: 'Home', ),
          BottomNavigationBarItem( icon: Icon(Icons.business), label: 'Business', ),
          BottomNavigationBarItem( icon: Icon(Icons.school), label: 'School', ),
        ],
        iconSize: 0.0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w900),
        currentIndex: controller.curPage.toInt(),
        onTap: (value) => controller.curPage.value = value,
      )
    ));
  }
}

