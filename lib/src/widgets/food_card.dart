import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard(
      {this.categoryName, this.imagePath, this.numberOfItems}); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical:
                  10.0), // symmetric: top = bottom  but diff from left = right
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagePath),
                height: 65.0,
                width: 65.0,
              ),
              // if you re inside a row, to make
              // space between items , use sizedbox to separate them
              // and precise the width
              // instead, inside a cloumn ,use
              // sizedbox by precising the height
              SizedBox(width: 20.0),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(categoryName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                    //SizedBox(height: 20.0),
                    Text(
                        "$numberOfItems kinds"), // or numberOfItems.tostring() + " kinds"
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
