import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';

const GPrimaryColor = Color(0xFF6D84C2);
const GPrimarryLightColor = LinearGradient(
    colors: [Color(0x0091EA0), Color(0xFF6951D8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);
//LineaGradient

const GsecondaryColor = Color(0xFF875EE6);
const GtextColor = Color(0xFF767983);
const GAnimationDuration = Duration(milliseconds: 200);

final GintTexteStyke = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final GlabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final GboxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
