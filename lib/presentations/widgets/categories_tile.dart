import 'package:flutter/material.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/meals_page.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MealsPage(
                    category: category,
                  )),
        );
      },
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      splashColor: category.color,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.6),
                category.color.withOpacity(1),
              ],
            ),
          ),
          child: Text(
            category.name,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
