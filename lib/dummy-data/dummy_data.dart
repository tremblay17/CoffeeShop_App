class DummyData {
  final List<CoffeeModel> coffeeList = [
    CoffeeModel(rating: 1.6, name: 'Cafe Latte', desc: 'Classic Latte'),
    CoffeeModel(
        rating: 1.5, name: 'Cappucino', desc: 'Like A Latte But Backwards'),
    CoffeeModel(rating: 5.0, name: 'Frappucino', desc: 'Frozen Blended'),
    CoffeeModel(rating: 2.7, name: 'Mocaccino', desc: 'Mocha'),
    CoffeeModel(rating: 1.9, name: 'Caramel Macchiato', desc: 'Flavored & Hot'),
    CoffeeModel(rating: 3.3, name: 'Iced Coffee', desc: 'Coffee With Ice'),
    CoffeeModel(rating: 2.0, name: 'Black Coffee', desc: 'No Cream Or Sugar'),
    CoffeeModel(rating: 2.4, name: 'Green Tea', desc: 'Tea'),
    CoffeeModel(rating: 3.4, name: 'Hot Chocolate', desc: 'Not Coffee'),
    CoffeeModel(rating: 3.3, name: 'Croissant', desc: 'Pastry1'),
    CoffeeModel(rating: 2.9, name: 'Muffin', desc: 'Pastry2'),
  ];
}

class CoffeeModel {
  final double rating;
  final String name;
  final String desc;

  CoffeeModel({
    required this.rating,
    required this.name,
    required this.desc,
  });
}
