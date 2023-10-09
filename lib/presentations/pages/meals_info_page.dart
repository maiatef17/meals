import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/meal_local_data_source%20copy/meal_local_data_source.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/favorites_page.dart';

class MealsInfoPage extends StatefulWidget {
  const MealsInfoPage({Key? key, required this.meals});

  final Meal meals;

  @override
  _MealsInfoPageState createState() => _MealsInfoPageState();
}

class _MealsInfoPageState extends State<MealsInfoPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(43, 42, 41, 0.965),
        title: Text(
          widget.meals.meal,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: GridTile(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(30)),
              child: Image.asset(
                widget.meals.imageurl,
                height: 350,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange,
                    ),
                  ),
                  const Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.meals.ingredients,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'Steps:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.meals.steps,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            MealLocalDSImpl().toggleMealFavorite(widget.meals.id.toString());
            widget.meals.isFav = !widget.meals.isFav;
          });
          ScaffoldMessenger.of(context).clearSnackBars();
          if (!widget.meals.isFav) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Removed from a favorite!"),
                duration: Duration(seconds: 1),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Marked as a favorite!"),
                duration: Duration(seconds: 1),
              ),
            );
          }
        },
        backgroundColor: Colors.orange,
        child: widget.meals.isFav
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border),
      ),
    );
  }
}
