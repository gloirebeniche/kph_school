import "package:flutter/material.dart";
import 'package:kph_school/constants.dart';
import 'package:kph_school/size_configutation.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "KPH",
          style: TextStyle(
              fontSize: getDispositionScreenWidth(36),
              color: GPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getDispositionScreenHeight(265),
          width: getDispositionScreenWidth(235),
        ),
      ],
    );
  }
}
