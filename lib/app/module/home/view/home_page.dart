import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/module/home/controller/home_page_controller.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    final HomePageController homePageController = Get.put(HomePageController());
   return Scaffold(     
     body: Padding(
       padding: EdgeInsets.only(left: width*0.2,right: width*0.2,top:height*0.1,bottom: height*0.1),
       child: Column(
         children: [
           FittedBox(
             child: Obx((){
               return Text("${homePageController.homeData.value.counter}",
              style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              );
             })
           ),
          const  Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             InkWell(
               onTap: (){
                  homePageController.increment();
               },
               child: const CircleAvatar(
                  backgroundColor: Colors.black54 ,
                  child: Icon(Icons.arrow_upward),
                ),
             ),
             InkWell(
               onTap: (){
                 homePageController.decrement();
               },
               child: const CircleAvatar(
                  backgroundColor: Colors.black54 ,
                  child: Icon(Icons.arrow_downward),
                ),
             )
            ],
          )

         ],
       ),
     ),
   );
  }

}