import 'package:flutter/material.dart';
import 'package:news3/models/category_model.dart';
import 'package:news3/views/category_view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key,required this.categoryModel});
 final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CategoryView(category: categoryModel.title);
      },));
    },
      child: Container(margin: EdgeInsets.only(right: 7),
        child: Center(
          child: Text(
            categoryModel.title,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        width: 180,
        height: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(categoryModel.image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(9)),
      ),
    );
  }
}
