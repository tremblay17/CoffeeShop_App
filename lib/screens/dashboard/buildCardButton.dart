import 'package:coffee_shop_app/common-widgets/ccard.dart';
import 'package:coffee_shop_app/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildCardButton() {
  return Padding(
    padding: EdgeInsets.all(15.0),
    child: CPicCard(
      child: Stack(
        textDirection: TextDirection.ltr,
        children: [
          CCardImgBuild(
            image: CImages.dashboard_img,
            scale: 1.4,
            height: 150.0,
            width: 400.0,
          ),
          Positioned(
            top: 30.0,
            left: 40.0,
            child: GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  text: 'Make your mood!',
                  style: GoogleFonts.varelaRound(
                    fontSize: 24.0,
                    shadows: <Shadow>[
                      BoxShadow(
                        blurRadius: 3.0,
                        offset: Offset(3.0, 3.0),
                      )
                    ],
                  ),
                  children: [
                    TextSpan(
                      text: '\nNeed recommendations?',
                      style: GoogleFonts.varelaRound(
                        fontSize: 16.0,
                        shadows: <Shadow>[
                          BoxShadow(
                            blurRadius: 3.0,
                            offset: Offset(3.0, 3.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30.0,
            left: 40.0,
            child: GestureDetector(
              onTap: () {},
              child: RichText(
                text: TextSpan(
                  text: '> Explore Now!',
                  style: GoogleFonts.varelaRound(
                    fontSize: 16.0,
                    shadows: <Shadow>[
                      BoxShadow(
                        blurRadius: 3.0,
                        offset: Offset(3.0, 3.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
