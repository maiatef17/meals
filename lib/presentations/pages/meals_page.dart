import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/meal_local_data_source%20copy/meal_local_data_source.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/add_meal.dart';
import 'package:pets_app/presentations/widgets/meals_tile.dart';

class MealsPage extends StatefulWidget {
  const MealsPage({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  State<MealsPage> createState() => _MealsPageState();
}

class _MealsPageState extends State<MealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        foregroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddMeal(
                            category: widget.category,
                          )));
              setState(() {});
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(43, 42, 41, 0.965),
        title: Text(
          widget.category.name,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: FutureBuilder(
          future: MealLocalDSImpl().getMeal(),
          builder: (context, snapshot) {
            print(snapshot.data);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final List<Meal> meals = snapshot.data!
                  .where((meal) => meal.categoryId == widget.category.id)
                  .toList();
              return ListView.builder(
                itemCount: meals.length,
                itemBuilder: (context, i) => MealsTile(
                  meal: meals[i],
                ),
              );
            }
          }),
    );
  }
}
