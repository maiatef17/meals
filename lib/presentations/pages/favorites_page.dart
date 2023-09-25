import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/data_source.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/categories_page.dart';
import 'package:pets_app/presentations/pages/favorites_page.dart';
import 'package:pets_app/presentations/pages/meals_page.dart';

import '../widgets/categories_tile.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 27, 27),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, i) => MealsWidget(
            meal: meals.where((element) => element.isFav == true).toList()[i]),
        itemCount:
            meals.where((element) => element.isFav == true).toList().length,
      ),
    );
  }
}
