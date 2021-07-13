import 'package:coffee_shop_app/screens/dashboard/buildAppBar.dart';
import 'package:coffee_shop_app/screens/dashboard/buildCardButton.dart';
import 'package:coffee_shop_app/screens/dashboard/buildCategories.dart';
import 'package:coffee_shop_app/screens/dashboard/buildNearestCafe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildCardButton(),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 20.0,
                bottom: 20.0,
              ),
              child: RichText(
                text: TextSpan(
                  text: 'Categories   ----------------',
                  style: GoogleFonts.varelaRound(
                    fontSize: 28.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            buildCategories(),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 20.0,
                bottom: 20.0,
              ),
              child: RichText(
                text: TextSpan(
                  text: 'Nearest Cafe   -------------',
                  style: GoogleFonts.varelaRound(
                    fontSize: 28.0,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            buildNearestCafe(),
          ],
        ),
      ),
    );
  }
}
