import 'package:dio/dio.dart';
import 'package:news3/models/news_model.dart';

class NewsService{
  final Dio dio=Dio();
 Future<List<NewsModel>> getNews({required String category})async{
    final Response response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=9efe9cd8569f45ccb3461601aab3cf8c&category=$category');

    Map<String,dynamic> jsonData=response.data;
    List articles=jsonData['articles'];
    List<NewsModel> ArticlesList=[];
    for (var aricle in articles) {
    NewsModel newsModel=  NewsModel(image: aricle['urlToImage'], title: aricle['title'], description: aricle['description']);
ArticlesList.add(newsModel);

    }
   return ArticlesList;

  }
}