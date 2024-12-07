import 'package:flutter/material.dart';
import 'package:news3/models/news_model.dart';
import 'package:news3/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key,required this.newsList});
final List<NewsModel> newsList;
  @override
  Widget build(BuildContext context) {




    // return ListView.builder(itemCount: newsList.length,itemBuilder: (context, index) {
    //    return NewsItem(newsModel:newsList[index] ,);
    //   },);
    
    return SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      return NewsItem(newsModel: newsList[index]);
    },));
 





  }
}