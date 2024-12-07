import 'package:flutter/material.dart';
import 'package:news3/widgets/category_item.dart';
import 'package:news3/widgets/category_list_view.dart';
import 'package:news3/widgets/news_item.dart';
import 'package:news3/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('NewsCloud'),centerTitle: true,),
      body:
      CustomScrollView(slivers: [
SliverToBoxAdapter(child: CategoryListView()),
      NewsListViewBuilder(category: 'general',)
      ],)
      
      
      
      );
  }
}