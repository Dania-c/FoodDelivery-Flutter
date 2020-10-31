import 'package:Food_App_Flutter_Zone/src/models/category_model.dart';
import 'package:flutter/material.dart';
import 'food_card.dart';
// Data
import '../data/category_data.dart';

//Model
import '../models/category_model.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    // i can build the list view based on the nb of item : ccategories
    // important, this uses a listview,and will be used in another listview
    //so this inner listview should have the height specified
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
