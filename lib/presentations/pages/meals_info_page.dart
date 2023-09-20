import 'package:flutter/material.dart';
import 'package:pets_app/data/models/meals.dart';



class MealsInfoPage extends StatelessWidget {
  const MealsInfoPage({Key? key, required this.meals});
  final Meal meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(43, 42, 41, 0.965),
        title: Text(
          '${meals.meal}',
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
                child: Image.asset('${meals.imageurl}',
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover)),
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
                        color: Colors.orange),
                  ),
                  Text(
                    'Ingredients:',
                    style: TextStyle(fontSize: 20,
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                  Text('${meals.ingredients}',style:TextStyle(color: Colors.white),),
                  Text(
                    'Steps:',
                    style: TextStyle(fontSize: 20,
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                Text('${meals.steps}',style:TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
