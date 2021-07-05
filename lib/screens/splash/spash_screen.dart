import "package:flutter/material.dart";
import 'package:kph_school/components/body.dart';
import 'package:kph_school/size_configutation.dart';

class SplahScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
