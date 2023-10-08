import 'dart:convert';
import 'package:pets_app/data/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CategoryLocalDS {
  Future<List<Category>> getCategory();
  Future<void> addCategory(Category category);
  Future<void> clearAllcategories();
}

const String categoriesKey = 'categoriesList';

class CategoryLocalDSImpl implements CategoryLocalDS {
  @override
  Future<List<Category>> getCategory() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> categoriesJson = prefs.getStringList(categoriesKey) ?? [];
    List<Category> categories = [];
    for (int i = 0; i < categoriesJson.length; i++) {
      final categoryJson = categoriesJson[i];
      final Map<String, dynamic> categoryMap = jsonDecode(categoryJson);
      Category category = Category.fromMap(categoryMap);
      categories.add(category);
    }

    return categories;
  }

  @override
  Future<void> addCategory(Category category) async {
    final prefs = await SharedPreferences.getInstance();
    Map categoryMap = category.toMap();
    final String categoryJson = jsonEncode(categoryMap);
    List<String> categoriesJson = prefs.getStringList(categoriesKey) ?? [];
    categoriesJson.add(categoryJson);
    await prefs.setStringList(categoriesKey, categoriesJson);
  }

  @override
  Future<void> clearAllcategories() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
