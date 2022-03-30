class ArticleModel {

  List<dynamic>? items;

  ArticleModel({this.items,});

  ArticleModel.fromJson(Map json) {   
    items = json['items'];
  }
}