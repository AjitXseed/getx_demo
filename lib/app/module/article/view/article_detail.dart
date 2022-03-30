import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ArticleDescription extends StatelessWidget{
  final String? description;
  final String? title;
  ArticleDescription({this.title,this.description});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: Text("${title}",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,),softWrap: true,),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black54,),
      ),
      body: SingleChildScrollView(
        child: Html(data: description),
      ),
    );
  }

}