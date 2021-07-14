import 'dart:convert';

class DummyData {
  final List<CoffeeModel> coffeeList = [
    CoffeeModel(
        id: 'drink', rating: 1.6, name: 'Cafe Latte', desc: 'Classic Latte'),
    CoffeeModel(
        id: 'drink',
        rating: 1.5,
        name: 'Cappucino',
        desc: 'Like A Latte But Backwards'),
    CoffeeModel(
        id: 'drink', rating: 5.0, name: 'Frappucino', desc: 'Frozen Blended'),
    CoffeeModel(id: 'drink', rating: 2.7, name: 'Mocaccino', desc: 'Mocha'),
    CoffeeModel(
        id: 'drink',
        rating: 1.9,
        name: 'Caramel Macchiato',
        desc: 'Flavored & Hot'),
    CoffeeModel(
        id: 'drink', rating: 3.3, name: 'Iced Coffee', desc: 'Coffee With Ice'),
    CoffeeModel(
        id: 'drink',
        rating: 2.0,
        name: 'Black Coffee',
        desc: 'No Cream Or Sugar'),
    CoffeeModel(id: 'drink', rating: 2.4, name: 'Green Tea', desc: 'Tea'),
    CoffeeModel(
        id: 'drink', rating: 3.4, name: 'Hot Chocolate', desc: 'Not Coffee'),
    CoffeeModel(id: 'food', rating: 3.3, name: 'Croissant', desc: 'Pastry1'),
    CoffeeModel(id: 'food', rating: 2.9, name: 'Muffin', desc: 'Pastry2'),
  ];
}

class CoffeeModel {
  final double rating;
  final String id;
  final String name;
  final String desc;

  CoffeeModel({
    required this.id,
    required this.rating,
    required this.name,
    required this.desc,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'rating': rating,
      'name': name,
      'desc': desc,
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
      id: map['id'],
      rating: map['rating'],
      name: map['name'],
      desc: map['desc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeModel.fromJson(String source) {
    var coffeeModelMap = CoffeeModel.fromMap(json.decode(source));
    return coffeeModelMap;
  }
}
