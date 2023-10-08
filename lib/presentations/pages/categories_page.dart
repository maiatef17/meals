import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/category_local_data_source/category_local_data_source.dart';
import 'package:pets_app/data/data%20source/meal_local_data_source%20copy/meal_local_data_source.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/add_category.dart';
import 'package:pets_app/presentations/pages/favorites_page.dart';
import 'package:pets_app/presentations/pages/splash_screen.dart';

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
    Padding(
      padding: const EdgeInsets.all(8),
      child: FutureBuilder(
          future: CategoryLocalDSImpl().getCategory(),
          builder: (context, snapshot) {
            print(snapshot.data);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) => CategoriesTile(
                category: snapshot.data![i],
              ),
              itemCount: snapshot.data!.length,
            );
          }),
    ),
    const FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.grey[900],
          child: ListView(
            children: [
              Image.asset(
                'assets/images/50.png',
              ),
              const Text(
                'Master Chef',
                style: TextStyle(
                    fontFamily: 'Cookie',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const categoriesPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    shape: const BeveledRectangleBorder()),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.restaurant,
                      size: 30,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Meals",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  CategoryLocalDSImpl().clearAllcategories();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    shape: const BeveledRectangleBorder()),
                child: const Text(
                  'Clear All Categories',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  MealLocalDSImpl().clearAllMeals();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const categoriesPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    shape: const BeveledRectangleBorder()),
                child: const Text(
                  'Clear All Meals',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 29, 27, 27),
      appBar: AppBar(
        foregroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddCategory()));
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
          currentIndex == 0 ? 'Categories' : 'Favorite',
          style: const TextStyle(
              fontWeight: FontWeight.normal, color: Colors.white),
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
        backgroundColor: const Color.fromRGBO(43, 42, 41, 0.965),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
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
