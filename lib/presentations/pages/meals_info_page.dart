import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/data_source.dart';
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
        backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
        title: Text(
          '${widget.meals.meal}',
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
                '${widget.meals.imageurl}',
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
                  Text(
                    '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Ingredients:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.meals.ingredients}',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Steps:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.meals.steps}',
                    style: TextStyle(color: Colors.white),
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
        child: widget.meals.isFav
            ? Icon(Icons.favorite)
            : Icon(Icons.favorite_border),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
