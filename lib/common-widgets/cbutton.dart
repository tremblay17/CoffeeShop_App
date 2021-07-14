import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CIconButton extends StatelessWidget {
  //Main: Brown --- Secondary: White
  const CIconButton({
    this.onPressed,
    this.icon,
    this.decoration,
    this.iconsize,
    this.height,
    this.width,
  });

  final onPressed;
  final icon;
  final decoration;
  final iconsize;
  final height;
  final width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: decoration,
      child: TextButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          size: iconsize,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return Colors.white;
            return Colors.brown;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) return Colors.brown;
              return Colors.white;
            },
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
        ),
      ),
    );
  }
}

class CIconButton2 extends StatelessWidget {
  //Main: White --- Secondary: Brown
  const CIconButton2({
    this.onPressed,
    this.icon,
    this.decoration,
    this.iconsize,
    this.height,
    this.width,
  });

  final onPressed;
  final icon;
  final decoration;
  final iconsize;
  final height;
  final width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: decoration,
      child: TextButton(
        onPressed: onPressed,
        child: Icon(
          icon,
          size: iconsize,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return Colors.brown;
            return Colors.white;
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) return Colors.white;
              return Colors.brown;
            },
          ),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
        ),
      ),
    );
  }
}

class CTextButton extends StatelessWidget {
  const CTextButton({
    required this.onPressed,
    this.text = '',
  });

  final onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.varelaRound(),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(5.0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) return Colors.white;
          return Colors.brown;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return Colors.brown;
            return Colors.white;
          },
        ),
        shadowColor: MaterialStateProperty.all(Colors.black26),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))),
        side: MaterialStateProperty.all(BorderSide.none),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
      ),
    );
  }
}
