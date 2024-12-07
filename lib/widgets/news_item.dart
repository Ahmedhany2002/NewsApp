import 'package:flutter/material.dart';
import 'package:news3/models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key,required this.newsModel});
final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Column(children: [
          Container(  width: double.infinity,height: 250,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(newsModel.image??'https://miro.medium.com/v2/resize:fit:828/format:webp/1*MXyMqcEJ6Se0SCWcYCKZTQ.jpeg'))),)
       , Text(newsModel.title,style: TextStyle(fontSize: 20,color: Colors.black),),
       Text(style: TextStyle(color: Colors.grey),newsModel.description??'',maxLines: 2,overflow: TextOverflow.ellipsis,)
        
        ],),
    );
  }
}