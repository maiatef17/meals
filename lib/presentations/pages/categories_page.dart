import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/data_source.dart';
import 'package:pets_app/data/models/meals.dart';

import '../widgets/categories_tile.dart';

class categoriesPage extends StatefulWidget {
  const categoriesPage({super.key});

  @override
  State<categoriesPage> createState() => _categoriesPageState();
}

class _categoriesPageState extends State<categoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              children: [
                ListTile(
                  title: const Text(
                    "Menu Item",
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 29, 27, 27),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
          title: Text(
            'Categories',
            style:
                TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
          ),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, i) => CategoriesTile(
            category: category[i],
            meal: meals[i],
          ),
          itemCount: category.length,
        ));
  }
}
