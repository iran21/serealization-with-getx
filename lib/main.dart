import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serealization_app/app/modules/home/home.binding.dart';
import 'package:serealization_app/app/modules/home/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      initialRoute: '/',
      getPages: [GetPage(name: '/', page: () => HomePage())],
    );
  }
}
