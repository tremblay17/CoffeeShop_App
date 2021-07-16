import 'dart:convert';

import 'package:http/http.dart' as http;

class DummyData {
  final List<CafeModel> cafeList = [
    CafeModel(id: 1, rating: 1.6, name: 'Cafe Latte', desc: 'Classic Latte'),
    CafeModel(
        id: 2,
        rating: 1.5,
        name: 'Hippy Dippy',
        desc: 'Like A Latte But Backwards'),
    CafeModel(id: 3, rating: 5.0, name: 'Jumpin Java', desc: 'Frozen Blended'),
    CafeModel(id: 4, rating: 2.7, name: 'Mean Beans', desc: 'Mocha'),
    CafeModel(
        id: 5, rating: 1.9, name: 'Frappe die Arsch', desc: 'Flavored & Hot'),
    CafeModel(id: 6, rating: 3.3, name: 'Coffee Cafe', desc: 'Coffee With Ice'),
    CafeModel(id: 7, rating: 2.0, name: 'BRC', desc: 'No Cream Or Sugar'),
    CafeModel(id: 8, rating: 2.4, name: 'Poon Juice', desc: 'Tea'),
    CafeModel(id: 9, rating: 3.4, name: 'Mom on Mondays', desc: 'Not Coffee'),
    CafeModel(id: 10, rating: 3.3, name: 'Dough House', desc: 'Pastry1'),
    CafeModel(id: 11, rating: 2.9, name: 'Pastry Palace', desc: 'Pastry2'),
  ];

  // final List<CoffeeModel> coffeeList = [
  //   CoffeeModel(id: 1, name: 'Cafe Latte', desc: 'Classic Latte'),
  //   CoffeeModel(id: 2, name: 'Hippy Dippy', desc: 'Like A Latte But Backwards'),
  //   CoffeeModel(id: 3, name: 'Jumpin Java', desc: 'Frozen Blended'),
  //   CoffeeModel(id: 4, name: 'Mean Beans', desc: 'Mocha'),
  //   CoffeeModel(id: 5, name: 'Frappe die Arsch', desc: 'Flavored & Hot'),
  //   CoffeeModel(id: 6, name: 'Coffee Cafe', desc: 'Coffee With Ice'),
  //   CoffeeModel(id: 7, name: 'BRC', desc: 'No Cream Or Sugar'),
  //   CoffeeModel(id: 8, name: 'Poon Juice', desc: 'Tea'),
  //   CoffeeModel(id: 9, name: 'Mom on Mondays', desc: 'Not Coffee'),
  //   CoffeeModel(id: 10, name: 'Dough House', desc: 'Pastry1'),
  //   CoffeeModel(id: 11, name: 'Pastry Palace', desc: 'Pastry2'),
  // ];
}

class CafeModel {
  final double rating;
  final int id;
  final String name;
  final String desc;

  CafeModel({
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

  factory CafeModel.fromMap(Map<String, dynamic> map) {
    return CafeModel(
      id: map['id'],
      rating: map['rating'],
      name: map['name'],
      desc: map['desc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CafeModel.fromJson(String source) {
    var coffeeModelMap = CafeModel.fromMap(json.decode(source));
    return coffeeModelMap;
  }
}

class CoffeeModel {
  final int id;
  final String name;
  final String desc;

  CoffeeModel({
    required this.id,
    required this.name,
    required this.desc,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeModel.fromJson(String source) =>
      CoffeeModel.fromMap(json.decode(source));
}
