import 'package:flutter/material.dart';
import 'package:news3/models/news_model.dart';
import 'package:news3/service/get_news.dart';
import 'package:news3/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,required this.category});
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future=NewsService().getNews(category:widget.category);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder<List<NewsModel>>(future: future, builder: (context, snapshot) {
      if(snapshot.hasData){
        return NewsListView(newsList: snapshot.data!);
      }
     else if(snapshot.hasError){
        return Text('opppppppsssss');
      }
else{
  return SliverToBoxAdapter(child: SizedBox(width: 200,height: 500,child: Center(child: CircularProgressIndicator())));
}
    },);
  }
}