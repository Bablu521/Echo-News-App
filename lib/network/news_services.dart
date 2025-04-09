import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;
  NewsServices({required this.dio});

  Future <Map<String,dynamic >> getNews({required String categoryName}) async{
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?category=$categoryName&apiKey=22a99380bfa0430786a7e36bdf831cb8");
    Map <String , dynamic> json  = response.data;
    return json;
  }
}
