import 'package:flutter/material.dart';
import 'package:pets_app/data/data source/data_source.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/meals_page.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({Key? key, required this.category, required this.meal})
      : super(key: key);

  final Category category;
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MealsPage(
                    meal: meal,
                    category: category,
                  )),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: GridTile(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: category.color.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      '${category.name}',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
