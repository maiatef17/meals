import 'dart:convert';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/add_category.dart';
import 'package:pets_app/presentations/pages/add_meal.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class MealLocalDS {
  Future<List<Meal>> getMeal();
  Future<void> addMeal(Meal meal);
  Future<void> toggleMealFavorite(String categoryId);
  Future<void> clearAllMeals();
}

const String mealsKey = 'mealsList';

class MealLocalDSImpl implements MealLocalDS {
  @override
  Future<List<Meal>> getMeal() async {
    final prefs = await SharedPreferences.getInstance();
    List mealsJson = prefs.getStringList(mealsKey) ?? [];
    List<Meal> meals = [];
    for (int i = 0; i < mealsJson.length; i++) {
      final mealJson = mealsJson[i];
      final Map<String, dynamic> mealMap = jsonDecode(mealJson);
      Meal meal = Meal.fromMap(mealMap);
      meals.add(meal);
    }

    return meals;
  }

  @override
  Future<void> addMeal(Meal meal) async {
    final prefs = await SharedPreferences.getInstance();
    Map mealMap = meal.toMap();
    final String mealJson = jsonEncode(mealMap);
    List<String> mealsJson = prefs.getStringList(mealsKey) ?? [];
    mealsJson.add(mealJson);
    await prefs.setStringList(mealsKey, mealsJson);
  }

  @override
  Future<void> toggleMealFavorite(String id) async {
    final meals = await getMeal();
    Meal? meal;
    for (int i = 0; i < meals.length; i++) {
      if (meals[i].id.toString() == id) {
        meal = meals[i];
      }
    }
    if (meal == null) throw Exception('meal not found');
    meal.isFav = !meal.isFav;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(mealsKey);
    for (int i = 0; i < meals.length; i++) {
      if (meals[i].id.toString() != id) {
        await addMeal(meals[i]);
      } else {
        await addMeal(meal);
      }
    }
  }

  @override
  Future<void> clearAllMeals() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(mealsKey);
  }
}
