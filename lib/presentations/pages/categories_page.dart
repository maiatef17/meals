import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/data_source.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/add_category.dart';
import 'package:pets_app/presentations/pages/favorites_page.dart';

import '../widgets/categories_tile.dart';

class categoriesPage extends StatefulWidget {
  const categoriesPage({
    super.key,
  });

  @override
  State<categoriesPage> createState() => _categoriesPageState();
}

class _categoriesPageState extends State<categoriesPage> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => CategoriesTile(
        category: category[i],
        meal: meals[i],
        
      ),
      itemCount: category.length,
    ),
    FavoritesPage(),
  ];

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
        actions: [
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AddCategory())),
                child: Icon(Icons.add,color: Colors.white,),
          ),
          
        ],
        backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
        title: Text(
          currentIndex == 0 ? 'Categories' : 'Favorite',
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ),
      body: _pages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
