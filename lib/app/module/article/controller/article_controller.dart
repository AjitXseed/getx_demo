import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_demo/app/module/article/model/article_model..dart';
import 'package:http/http.dart' as http;

class ArticleController extends GetxController{
  Rx<ArticleModel> articleModel = ArticleModel().obs;
  @override
  void onInit(){
    initializeServiceModel();
    super.onInit();
  }
  @override
  void onClose(){
    super.onClose();
  }
  initializeServiceModel()  async{
         articleModel.value = await http.get(Uri.parse("https://api.rss2json.com/v1/api.json?rss_url=https://medium.com/feed/@codemagicio")).then((value) {
           Map<String, dynamic> map = json.decode(value.body);
           return ArticleModel.fromJson(map);
         });
  }


}