import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;

import 'package:getx_demo/app/module/article/controller/article_controller.dart';
import 'package:getx_demo/app/module/article/view/article_detail.dart';

class Articles extends StatelessWidget{
  
  
  @override
  Widget build(BuildContext context) {
    ArticleController articleController = Get.put(ArticleController());
    return Scaffold(
      appBar: AppBar(
        //title: Icon(LineIcons.medium,color: Colors.black,size: 30,),
        title: Text("Articles",style: TextStyle(color: Colors.black54),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black54,)
      ),
      body: Center(child: GetX(
        init: Get.put(ArticleController()),
        builder: (ArticleController articleController){
          if(articleController.articleModel.value.items==null){
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: articleController.articleModel.value.items!.length,
            itemBuilder: (_,index){
              return InkWell(
                onTap: (){
                  Get.to(                  
                    ArticleDescription(description: articleController.articleModel.value.items![index]["description"],
                  title: articleController.articleModel.value.items![index]["title"],),
                  transition: Transition.zoom,
                  duration: Duration(seconds: 1)
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    
                    child: Column(
                      children: [
                        Image.network(articleController.articleModel.value.items![index]["thumbnail"]),
                        const SizedBox(height: 10,),
                        Text(articleController.articleModel.value.items![index]["title"],style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("${articleController.articleModel.value.items![index]["pubDate"]}"),                                                        
                          ],
                        )
                      ],
                    ),
                  ),
              );
            });
        })),
    );
  }

}