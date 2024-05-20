import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytabview/home.dart';

import 'my_binding.dart';

void main() {
  return runApp(
    GetMaterialApp(
      initialBinding: MyBinding(),
      getPages: [
        GetPage(name: '/', page: () => MyHome()),
      ],
      initialRoute: '/',
    )
  );
}
