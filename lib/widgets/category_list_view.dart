import 'package:flutter/material.dart';
import 'package:news3/models/category_model.dart';
import 'package:news3/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
 final List<CategoryModel> categories=const [
  CategoryModel(image:'assets/business.avif' , title: 'business'),
  CategoryModel(image:'assets/entertaiment.avif' , title: 'entertaiment'),
  CategoryModel(image:'assets/general.avif' , title: 'general'),
  CategoryModel(image:'assets/health.avif' , title: 'health'),
  CategoryModel(image:'assets/science.avif' , title: 'science'),
  CategoryModel(image:'assets/sports.avif' , title: 'sports'),
  CategoryModel(image:'assets/technology.jpeg' , title: 'technology'),
 ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: 120,
        child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: categories.length,itemBuilder: (context, index) {
         return CategoryItem(categoryModel: categories[index],);
        },),
      );
  }
}