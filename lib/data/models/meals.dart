import 'package:flutter/material.dart';

class Meal {
  final String mid;
  final String imageurl, meal;
  final List<String> ingredients;
  final List<String> steps;
  final String complexity;
  final String affordability;
  final String time;

  Meal(this.mid, this.imageurl, this.meal, this.ingredients, this.steps,
      this.complexity, this.affordability, this.time);
}
