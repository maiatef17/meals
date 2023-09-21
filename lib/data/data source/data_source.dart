import 'package:flutter/material.dart';
import 'package:pets_app/data/models/meals.dart';

import 'package:flutter/material.dart';

import 'package:pets_app/data/models/meals.dart';

import '../models/category.dart';

List<Category> category = [
  Category(
    'Italian',
    Colors.deepOrangeAccent,
    'c1',
  ),
  Category('Quick & Easy', Colors.yellow, 'c2'),
  Category('Hamburgers', Colors.blue, 'c3'),
  Category('German', Colors.red, 'c4'),
  Category('Light & Lovely', Colors.teal, 'c5'),
  Category('Exotic', Colors.brown, 'c6'),
  Category('Breakfast', Colors.orange, 'c7'),
  Category('Asian', Colors.green, 'c8'),
  Category('Frensh', Colors.pink, 'c9'),
  Category('Summer', Colors.blueGrey, 'c10'),
];

List<Meal> meals = [
  Meal(
      'c1',
      'assets/images/7.webp',
      'Caprese Salad with Pesto Sauce',
      [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish'
      ],
      'Simple',
      'Luxurious',
      '25 min'),
  Meal(
      'c2',
      'assets/images/1.png',
      'Salad with Smoked Salamon',
      [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c1',
      'assets/images/20.jpg',
      ' Bruschetta',
      [
        '3 Slice White Bread',
        '1 Slice Ham',
        '1 Slice Pineapple',
        '1-2 Slices of Cheese',
        'Butter'
      ],
      [
        'Butter one side of the white bread',
        'Layer ham, the pineapple and cheese on the white bread',
        'Bake the toast for round about 10 minutes in the oven at 200°C'
      ],
      'Simple',
      'Luxurious',
      '25 min'),
  Meal(
      'c10',
      'assets/images/8.webp',
      'Pasta Carbonara',
      [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.'
      ],
      'Hard',
      'Affordable',
      '30 min'),
  Meal(
      'c1',
      'assets/images/9.jpg',
      'Margherita Pizza',
      [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c5',
      'assets/images/21.jpg',
      ' Pasta Con Pomodoro E Basilico',
      [
        'White and Green Asparagus',
        '30g Pine Nuts',
        '300g Cherry Tomatoes',
        'Salad',
        'Salt, Pepper and Olive Oil'
      ],
      [
        'Wash, peel and cut the asparagus',
        'Cook in salted water',
        'Salt and pepper the asparagus',
        'Roast the pine nuts',
        'Halve the tomatoes',
        'Mix with asparagus, salad and dressing',
        'Serve with Baguette'
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c8',
      'assets/images/1.jpg',
      'Salad with Smoked Salamon',
      [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.'
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c5',
      'assets/images/22.jpg',
      'Lasagna ',
      [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.'
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c2',
      'assets/images/3.webp',
      'Caprese Salad with Pesto Sauce',
      [
        '8 Veal Cutlets',
        '4 Eggs',
        '200g Bread Crumbs',
        '100g Flour',
        '300ml Butter',
        '100g Vegetable Oil',
        'Salt',
        'Lemon Slices'
      ],
      [
        'Tenderize the veal to about 2-4mm, and salt on both sides.',
        'On a flat plate, stir the eggs briefly with a fork.',
        'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c8',
      'assets/images/3.jpg',
      'Classic Pasta Amatriciana',
      [
        'White and Green Asparagus',
        '30g Pine Nuts',
        '300g Cherry Tomatoes',
        'Salad',
        'Salt, Pepper and Olive Oil'
      ],
      [
        'Wash, peel and cut the asparagus',
        'Cook in salted water',
        'Salt and pepper the asparagus',
        'Roast the pine nuts',
        'Halve the tomatoes',
        'Mix with asparagus, salad and dressing',
        'Serve with Baguette'
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c3',
      'assets/images/23.jpg',
      'Teriyaki Burgers Recipe',
      [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.',
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c3',
      'assets/images/24.jpg',
      'Mozzarella beef burger',
      ['1 Slice Ham', '1 Slice Pineapple', '1-2 Slices of Cheese', 'Butter'],
      [
        'Butter one side of the white bread',
        'Layer ham, the pineapple and cheese on the white bread',
        'Bake the toast for round about 10 minutes in the oven at 200°C'
      ],
      'Simple',
      'Luxurious',
      '25 min'),
  Meal(
      'c10',
      'assets/images/3.jpg',
      'Classic Pasta Amatriciana',
      [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.',
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c3',
      'assets/images/25.jpg',
      'Hatch Chile Smash Burger',
      [
        '300g Cattle Hack',
        '1 Tomato',
        '1 Cucumber',
        '1 Onion',
        'Ketchup',
        '2 Burger Buns'
      ],
      [
        'Form 2 patties',
        'Fry the patties for c. 4 minutes on each side',
        'Quickly fry the buns for c. 1 minute on each side',
        'Bruch buns with ketchup',
        'Serve burger with tomato, cucumber and onion'
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c4',
      'assets/images/26.jpg',
      'Sauerbraten',
      [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      'Hard',
      'Affordable',
      '30 min'),
  Meal(
      'c4',
      'assets/images/27.jpg',
      'Kartoffelpuffer',
      [
        '4 botatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.',
      ],
      'Hard',
      'Affordable',
      '240 min'),
  Meal(
      'c4',
      'assets/images/28.jpg',
      'Wurst',
      [
        '8 Veal Cutlets',
        '4 Eggs',
        '200g Bread Crumbs',
        '100g Flour',
        '300ml Butter',
        '100g Vegetable Oil',
        'Salt',
        'Lemon Slices'
      ],
      [
        'Tenderize the veal to about 2-4mm, and salt on both sides.',
        'On a flat plate, stir the eggs briefly with a fork.',
        'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      ],
      'Hard',
      'Affordable',
      '25 min'),
  Meal(
      'c7',
      'assets/images/30.jpg',
      'Scrambled Eggs',
      [
        '8 Veal Cutlets',
        '4 Eggs',
        '200g Bread Crumbs',
        '100g Flour',
        '300ml Butter',
        '100g Vegetable Oil',
        'Salt',
        'Lemon Slices'
      ],
      [
        'Tenderize the veal to about 2-4mm, and salt on both sides.',
        'On a flat plate, stir the eggs briefly with a fork.',
        'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      ],
      'Simple',
      'Affordable',
      '40 min'),
  Meal(
      'c7',
      'assets/images/31.jpg',
      'Fonio Pancakes',
      [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      'Hard',
      'Affordable',
      '60 min'),
  Meal(
      'c7',
      'assets/images/32.jpg',
      '“Inside-Out” Omelet',
      [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.',
      ],
      'Simple',
      'Affordable',
      '40 min'),
  Meal(
      'c9',
      'assets/images/33.jpg',
      '“Steak frites',
      [
        '4 Chicken Breasts',
        '1 Onion',
        '2 Cloves of Garlic',
        '1 Piece of Ginger',
        '4 Tablespoons Almonds',
        '1 Teaspoon Cayenne Pepper',
        '500ml Coconut Milk',
      ],
      [
        'Slice and fry the chicken breast',
        'Process onion, garlic and ginger into paste and sauté everything',
        'Add spices and stir fry',
        'Add chicken breast + 250ml of water and cook everything for 10 minutes',
        'Add coconut milk',
        'Serve with rice'
      ],
      'Simple',
      'Affordable',
      '30 min'),
  Meal(
      'c9',
      'assets/images/34.jpg',
      'Salmon en papillote',
      [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      'Simple',
      'Luxurious',
      '25 min'),
  Meal(
      'c6',
      'assets/images/36.jpg',
      'Sheet Pan Turkey Dinner',
      [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      'Hard',
      'Affordable',
      '60 min'),
  Meal(
      'c9',
      'assets/images/35.jpg',
      'Boeuf bourguignon',
      [
        '4 Chicken Breasts',
        '1 Onion',
        '2 Cloves of Garlic',
        '1 Piece of Ginger',
        '4 Tablespoons Almonds',
        '1 Teaspoon Cayenne Pepper',
        '500ml Coconut Milk',
      ],
      [
        'Slice and fry the chicken breast',
        'Process onion, garlic and ginger into paste and sauté everything',
        'Add spices and stir fry',
        'Add chicken breast + 250ml of water and cook everything for 10 minutes',
        'Add coconut milk',
        'Serve with rice'
      ],
      'Hard',
      'Affordable',
      '60 min'),
  Meal(
      'c6',
      'assets/images/37.jpg',
      'Coconut Curry Chickpeas With Wilted Greens',
      [
        '4 Chicken Breasts',
        '1 Onion',
        '2 Cloves of Garlic',
        '1 Piece of Ginger',
        '4 Tablespoons Almonds',
        '1 Teaspoon Cayenne Pepper',
        '500ml Coconut Milk',
      ],
      [
        'Slice and fry the chicken breast',
        'Process onion, garlic and ginger into paste and sauté everything',
        'Add spices and stir fry',
        'Add chicken breast + 250ml of water and cook everything for 10 minutes',
        'Add coconut milk',
        'Serve with rice'
      ],
      'Hard',
      'Affordable',
      '60 min'),
  Meal(
      'c6',
      'assets/images/38.jpg',
      'Pineapple Fried Rice',
      [
        'White and Green Asparagus',
        '30g Pine Nuts',
        '300g Cherry Tomatoes',
        'Salad',
        'Salt, Pepper and Olive Oil'
      ],
      [
        'Wash, peel and cut the asparagus',
        'Cook in salted water',
        'Salt and pepper the asparagus',
        'Roast the pine nuts',
        'Halve the tomatoes',
        'Mix with asparagus, salad and dressing',
        'Serve with Baguette'
      ],
      'Hard',
      'Affordable',
      '60 min'),
  Meal(
      'c10',
      'assets/images/1.png',
      'Salad with Smoked Salamon',
      [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      'Hard',
      'Affordable',
      '240 min'),
];
