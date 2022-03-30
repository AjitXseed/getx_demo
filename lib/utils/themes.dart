import 'package:flutter/material.dart';
class Themes {
  static final light = ThemeData.light().copyWith(
     primaryColor: Color(0xFFFD3664),
    backgroundColor: Colors.white,    
    canvasColor: Colors.black54,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,    
    canvasColor: Colors.white,
     visualDensity: VisualDensity.adaptivePlatformDensity,
   
  );
}