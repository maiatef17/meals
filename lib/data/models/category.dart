import 'dart:ui';

class Category {
  final String name;
  final Color color;
  final int id;

  Category(this.name, this.color, this.id);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'color': color.value,
      'id': id,
    };
  }

  Category.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        color = Color(map['color']),
        id = map['id'];
}
