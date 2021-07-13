import 'package:coffee_shop_app/common-widgets/cbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        'Dashboard',
        style: GoogleFonts.varelaRound(
          color: Colors.brown,
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          shadows: <Shadow>[
            BoxShadow(
              offset: Offset(0.0, 3.0),
              blurRadius: 5.0,
            )
          ],
        ),
      ),
    ),
    leading: Padding(
      padding: EdgeInsets.only(left: 20.0, top: 10.0),
      child: CIconButton(
        iconsize: 20.0,
        onPressed: () {
          return null;
        },
        icon: Icons.search_outlined,
      ),
    ),
    elevation: 0.0,
    backgroundColor: Colors.white24,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20.0, top: 10.0),
        child: CIconButton(
          width: 37.0,
          iconsize: 22.0,
          onPressed: () {
            return null;
          },
          icon: Icons.menu,
        ),
      ),
    ],
  );
}
