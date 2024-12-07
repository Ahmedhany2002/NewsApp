import 'package:flutter/material.dart';
import 'package:news3/service/get_news.dart';
import 'package:news3/views/home_view.dart';

void main() {
  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:HomeView() ,
    );
  }
}