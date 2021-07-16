import 'package:coffee_shop_app/common-widgets/cbutton.dart';
import 'package:coffee_shop_app/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget buildAppBarMenu() {
  return PreferredSize(
    preferredSize: Size.fromHeight(200.0),
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.none,
          image: AssetImage(
            CImages.menu_img,
          ),
        ),
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'Cafe Details',
            style: GoogleFonts.varelaRound(
              color: Colors.white,
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
          child: CIconButton2(
            iconsize: 20.0,
            onPressed: () {
              return null;
            },
            icon: Icons.search_outlined,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10.0),
            child: CIconButton2(
              width: 37.0,
              iconsize: 22.0,
              onPressed: () {
                return null;
              },
              icon: Icons.menu,
            ),
          ),
        ],
      ),
    ),
  );
}
