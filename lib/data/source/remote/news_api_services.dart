import 'package:dio/dio.dart';
import 'package:news_app/data/models/articlemodel.dart';

class NewsApiServices {
  final Dio dio;

  NewsApiServices(this.dio);

  Future<List<Articlemodel>> fetchArticles({required String catogray}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=$catogray&apiKey=5bb659be54d4458abe3d92d3078c3bc2');
    if (response.statusCode == 200) {
      final List articles = response.data['articles'];
      return articles.map((json) => Articlemodel.form(json)).toList();
    } else {
      throw Exception('Failed to fetch articles');
    }
  }
}
