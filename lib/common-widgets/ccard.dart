import 'package:flutter/material.dart';

class CIconCard extends StatelessWidget {
  const CIconCard({
    required this.child,
    required this.color,
  });

  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
      color: color,
      elevation: 5.0,
      borderOnForeground: false,
      shadowColor: Colors.black26,
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      semanticContainer: false,
    );
  }
}

class CPicCard extends StatelessWidget {
  const CPicCard({
    required this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
      elevation: 5.0,
      borderOnForeground: false,
      shadowColor: Colors.black26,
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      semanticContainer: false,
    );
  }
}

class CTextCard extends StatelessWidget {
  const CTextCard({
    required this.child,
    required this.color,
    required this.elevation,
  });

  final Widget? child;
  final Color? color;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
      color: color,
      elevation: elevation,
      borderOnForeground: false,
      shadowColor: Colors.black26,
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      semanticContainer: false,
    );
  }
}

class CCardImgBuild extends StatelessWidget {
  const CCardImgBuild({
    required this.image,
    required this.height,
    required this.width,
    required this.scale,
  });

  final String image;
  final double height;
  final double width;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        image,
        alignment: Alignment.center,
        fit: BoxFit.none,
        height: height,
        width: width,
        scale: scale,
      ),
    );
  }
}
