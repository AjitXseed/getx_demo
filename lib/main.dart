import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/module/home/view/home_page.dart';
import 'package:getx_demo/second_page.dart';
import 'package:getx_demo/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(   
      debugShowCheckedModeBanner: false,   
      theme: Themes.light,
      darkTheme: Themes.dark,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>const HomePage()),
        GetPage(name: '/second', page: ()=>SecondPage())
      ],
    );
  }
}

