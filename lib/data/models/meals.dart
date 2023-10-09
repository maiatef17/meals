class Meal {
  bool isFav;
  final int id;
  final int categoryId;
  final String imageurl, meal;
  final String ingredients;
  final String steps;
  final String complexity;
  final String affordability;
  final String time;

  Meal(this.id, this.categoryId, this.imageurl, this.meal, this.ingredients,
      this.steps, this.complexity, this.affordability, this.time,
      {this.isFav = false});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'isFav': isFav,
      'categoryId': categoryId,
      'imageurl': imageurl,
      'meal': meal,
      'ingredients': ingredients,
      'steps': steps,
      'complexity': complexity,
      'affordability': affordability,
      'time': time,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      map['id'],
      map['categoryId'],
      map['imageurl'],
      map['meal'],
      map['ingredients'],
      map['steps'],
      map['complexity'],
      map['affordability'],
      map['time'],
      isFav: map['isFav'],
    );
  }
}
