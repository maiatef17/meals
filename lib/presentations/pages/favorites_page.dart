import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/meal_local_data_source%20copy/meal_local_data_source.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/widgets/meals_tile.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 27, 27),
      body: FutureBuilder<List<Meal>>(
        future: MealLocalDSImpl().getMeal(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          List<Meal> meals = snapshot.data!;

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              Meal meal =
                  meals.where((meal) => meal.isFav == true).toList()[index];
              return MealsTile(meal: meal);
            },
            itemCount:
                meals.where((meal) => meal.isFav == true).toList().length,
          );
        },
      ),
    );
  }
}
