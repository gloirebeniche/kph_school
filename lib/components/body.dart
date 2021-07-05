import "package:flutter/material.dart";
import 'package:kph_school/constants.dart';
import 'package:kph_school/size_configutation.dart';
import 'splash_content.dart';
import "package:kph_school/screens/login_screen.dart";

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int nombrePage = 0;
  List<Map<String, String>> splashData = [
    {"text": "BIENVENUE DANS KPH", "image": "assets/images/splash_2.png"},
    {
      "text": "identification du potentiel, orientation scolaires",
      "image": "assets/images/splash_4.png"
    },
    {
      "text": "nous accompagnons les jeunes \ndans leur parcours professionnel",
      "image": "assets/images/splash_1.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    nombrePage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getDispositionScreenHeight(50)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: getDispositionScreenHeight(56),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: GPrimaryColor,
                        onPressed: newLoginScreen,
                        child: Text(
                          "commencer",
                          style: TextStyle(
                            fontSize: getDispositionScreenWidth(18),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: GAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: nombrePage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: nombrePage == index ? GPrimaryColor : Color(0xFF6951D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  void newLoginScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return LoginScreen();
    }));
  }
}
