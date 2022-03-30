import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/module/article/view/article_list.dart';
import 'package:getx_demo/app/module/home/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(   
      debugShowCheckedModeBanner: false,   
      home:  Articles(),
    );
  }
}

