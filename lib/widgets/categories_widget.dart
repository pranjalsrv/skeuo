import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/categories_model.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      new BoxShadow(
                          color: Color(0xffb3b3b3),
                          blurRadius: 5,
                          spreadRadius: 3,
                          offset: new Offset(3, 3)),
                      new BoxShadow(
                          color: Color(0xffffffff),
                          blurRadius: 5,
                          spreadRadius: 3,
                          offset: new Offset(-3, -3))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          categories[index].icon,
                          size: 30,
                        ),
                        Text(
                          "${categories[index].categoryPercent}%",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          categories[index].categoryName,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rs. ${categories[index].totalCost}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
