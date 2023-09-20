import 'package:flutter/material.dart';
import 'package:pets_app/data/data%20source/data_source.dart';
import 'package:pets_app/data/models/category.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/meals_info_page.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({super.key, required this.category, required this.meal});
  final Meal meal;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          //leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
          backgroundColor: Color.fromRGBO(43, 42, 41, 0.965),
          title: Text(
            '${category.name}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          //itemCount: meals.length,
          itemCount: meals
              .where((m) {
                return m.mid == category.id;
              })
              .toList()
              .length,

          itemBuilder: (context, i) => MealsWidget(
          //  meal: meals[i],
              meal: meals.where((m) {
                return m.mid == category.id;
              }).toList()[i],
          ),
        ));
  }
}

class MealsWidget extends StatelessWidget {
  const MealsWidget({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MealsInfoPage(meals: meal)));
        },
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            width: 500,
            height: 220,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GridTile(
                  footer: Container(
                      height: 75,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            meal.meal,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                meal.time,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.shopping_bag,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                meal.complexity,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.attach_money_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                meal.affordability,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )),
                  child: Image.asset(meal.imageurl, fit: BoxFit.cover)),
            ),
          ),
        ));
  }
}
