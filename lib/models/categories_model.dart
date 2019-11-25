import 'dart:core';

import 'package:flutter/material.dart';

class Category {
  String categoryName;
  double categoryPercent;
  double totalCost;
  var icon;

  Category(
      {this.categoryName, this.categoryPercent, this.totalCost, this.icon});
}

List<Category> categories = [
  Category(
      categoryName: "Restaurants",
      categoryPercent: 25,
      totalCost: 1593.58,
      icon: Icons.cake),
  Category(
      categoryName: "Shops",
      categoryPercent: 45,
      totalCost: 3598.63,
      icon: Icons.store),
  Category(
      categoryName: "Travel",
      categoryPercent: 30,
      totalCost: 2434.45,
      icon: Icons.directions_car)
];
