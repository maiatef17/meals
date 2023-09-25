import 'package:flutter/material.dart';

class Meal {
  bool isFav;
  final int categoryId;
  final String imageurl, meal;
  final List<String> ingredients;
  final List<String> steps;
  final String complexity;
  final String affordability;
  final String time;

  Meal(this.categoryId, this.imageurl, this.meal, this.ingredients, this.steps,
      this.complexity, this.affordability, this.time,
      {this.isFav = false});
}
