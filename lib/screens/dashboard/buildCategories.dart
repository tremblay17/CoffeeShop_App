import 'package:coffee_shop_app/common-widgets/cbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildCategories() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          CIconButton(
            height: 80.0,
            width: 70.0,
            icon: Icons.coffee,
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
            padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
            child: Text(
              'Coffee',
              style: GoogleFonts.inknutAntiqua(),
            ),
          )
        ],
      ),
      Column(
        children: [
          CIconButton(
            height: 80.0,
            width: 70.0,
            icon: Icons.local_drink_outlined,
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
            padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
            child: Text(
              'Other Drinks',
              style: GoogleFonts.inknutAntiqua(),
            ),
          )
        ],
      ),
      Column(
        children: [
          CIconButton(
            height: 80.0,
            width: 70.0,
            icon: Icons.fastfood,
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
            padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
            child: Text(
              'Lunch',
              style: GoogleFonts.inknutAntiqua(),
            ),
          )
        ],
      ),
      Column(
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
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
            child: Text(
              'Pastries',
              style: GoogleFonts.inknutAntiqua(),
            ),
          )
        ],
      ),
    ],
  );
}
