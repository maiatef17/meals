import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/data_source.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/categories_page.dart';
import 'package:pets_app/presentations/pages/meals_page.dart';

class AddMeal extends StatefulWidget {
  const AddMeal({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 27, 27),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
          title: Text(
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
                decoration: InputDecoration(
                  labelText: 'meal',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: imageurl,
                decoration: InputDecoration(
                  labelText: 'image',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: ingredients,
                decoration: InputDecoration(
                  labelText: 'ingredients',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: steps,
                decoration: InputDecoration(
                  labelText: 'steps',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: complexity,
                decoration: InputDecoration(
                  labelText: 'complexity',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: affordability,
                decoration: InputDecoration(
                  labelText: 'affordability',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: time,
                decoration: InputDecoration(
                  labelText: 'time',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    meals.add(Meal(
                        10,
                        imageurl.text,
                        name.text,
                        [ingredients.text],
                        [steps.text],
                        complexity.text,
                        affordability.text,
                        time.text));
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MealsPage(
                              category: category[10], meal: meals[10])));
                },
                child: Text('Save Meal', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ));
  }
}
