import 'package:coffee_shop_app/common-widgets/cbutton.dart';
import 'package:coffee_shop_app/dummy-data/dummy_data.dart';
import 'package:flutter/material.dart';

Widget buildNearestCafe() {
  List<CoffeeModel> data = DummyData().coffeeList;

  return Container(
    height: 400.0,
    width: 150.0,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            CIconButton(
              height: 80.0,
              width: 70.0,
              icon: Icons.bakery_dining,
              iconsize: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              onPressed: () {},
            ),
            Card(
              child: Column(
                children: [
                  Text('$data[rating]'),
                  Text('$data[name]'),
                  Text('$data[desc]'),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
}
