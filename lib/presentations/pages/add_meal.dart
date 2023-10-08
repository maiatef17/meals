import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/meal_local_data_source%20copy/meal_local_data_source.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/meals_page.dart';

class AddMeal extends StatefulWidget {
  const AddMeal({super.key, required this.category});
  final Category category;

  @override
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController imageurl = TextEditingController();
  TextEditingController ingredients = TextEditingController();
  TextEditingController steps = TextEditingController();
  TextEditingController complexity = TextEditingController();
  TextEditingController affordability = TextEditingController();
  TextEditingController time = TextEditingController();
  MealLocalDSImpl mealDS = MealLocalDSImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 27, 27),
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromRGBO(43, 42, 41, 0.965),
          title: const Text(
            'Add Meal',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Form(
          key: key,
          child: ListView(
            children: [
              TextFormField(
                controller: name,
                decoration: const InputDecoration(
                  labelText: 'meal',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: imageurl,
                decoration: const InputDecoration(
                  labelText: 'image',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ingredients,
                decoration: const InputDecoration(
                  labelText: 'ingredients',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: steps,
                decoration: const InputDecoration(
                  labelText: 'steps',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: complexity,
                decoration: const InputDecoration(
                  labelText: 'complexity',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: affordability,
                decoration: const InputDecoration(
                  labelText: 'affordability',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: time,
                decoration: const InputDecoration(
                  labelText: 'time',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () async {
                  await mealDS.addMeal(Meal(
                      widget.category.id,
                      imageurl.text,
                      name.text,
                      ingredients.text,
                      steps.text,
                      complexity.text,
                      affordability.text,
                      time.text));

                  await Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MealsPage(
                                category: widget.category,
                              )));
                },
                child: const Text('Save Meal',
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ));
  }
}
