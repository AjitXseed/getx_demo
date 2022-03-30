import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(       
      title: Text("Getx Demo",style: TextStyle(color: Colors.black,fontSize:30),),
      actions: [
        IconButton(onPressed: (){
          if(Get.isDarkMode){
            Get.changeThemeMode(ThemeMode.light);
          }
          else{
            Get.changeThemeMode(ThemeMode.dark);
          }
        }, icon: Icon(Icons.light,color: Colors.black, ))
      ],
     ),  
     body: Center(
       child: Text("${Get.parameters['counter']}",style: const TextStyle(
         fontSize: 50,
         fontWeight: FontWeight.bold,
         color: Colors.black
       ),),
     ),
   );
  }

}