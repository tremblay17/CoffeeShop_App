import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:coffee_shop_app/common-widgets/cbutton.dart';
import 'package:coffee_shop_app/common-widgets/ccard.dart';
import 'package:coffee_shop_app/dummy-data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildMenuList extends StatelessWidget {
  final List<CoffeeModel>? coffeeList;

  BuildMenuList({Key? key, required this.coffeeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 400.0,
      width: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: coffeeList!.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
            child: Row(
              children: [
                CIconButton2(
                  height: 100.0,
                  width: 75.0,
                  icon: coffeeList![index].id % 2 == 0
                      ? Icons.shopping_bag
                      : Icons.coffee,
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
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 115.0,
                      width: 270.0,
                      child: CTextCard(
                        color: Colors.transparent,
                        elevation: 0.0,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${coffeeList![index].name}',
                                  style: GoogleFonts.inknutAntiqua(),
                                ),
                                Text(
                                  '> Shop Now',
                                  style: GoogleFonts.inknutAntiqua(),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${coffeeList![index].desc}',
                                style: GoogleFonts.bioRhyme(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
