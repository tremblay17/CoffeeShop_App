import 'package:coffee_shop_app/common-widgets/cbutton.dart';
import 'package:coffee_shop_app/common-widgets/ccard.dart';
import 'package:coffee_shop_app/dummy-data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildNearestCafe() {
  List<CafeModel> data = DummyData().cafeList;

  return new Container(
    height: 400.0,
    width: 150.0,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25.0, bottom: 10.0),
          child: Row(
            children: [
              CIconButton2(
                height: 100.0,
                width: 75.0,
                icon:
                    data[index].id % 2 == 0 ? Icons.shopping_bag : Icons.coffee,
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
                                data[index].name,
                                style: GoogleFonts.inknutAntiqua(),
                              ),
                              Text(
                                data[index].rating.toString(),
                                style: GoogleFonts.inknutAntiqua(),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data[index].desc,
                              style: GoogleFonts.bioRhyme(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'See Details',
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
