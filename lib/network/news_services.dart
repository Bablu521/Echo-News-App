import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;
  NewsServices({required this.dio});

  Future <Map<String,dynamic >> getNews({required String categoryName}) async{
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?category=$categoryName&apiKey=f26a09123fd54360a972f76d93800e02");
    Map <String , dynamic> json  = response.data;
    return json;
  }
}
