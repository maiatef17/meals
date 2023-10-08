import 'package:flutter/material.dart';
import 'package:pets_app/data/models/meals.dart';
import 'package:pets_app/presentations/pages/meals_info_page.dart';

class MealsTile extends StatelessWidget {
  const MealsTile({
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
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            width: 50,
            height: 220,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: GridTile(
                  footer: Container(
                      height: 75,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            meal.meal,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                meal.time,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.shopping_bag,
                                color: Colors.white,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                meal.complexity,
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.attach_money_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                meal.affordability,
                                style: const TextStyle(
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
