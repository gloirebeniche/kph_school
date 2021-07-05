import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kph_school/constants.dart';
import 'package:kph_school/screens/connect.dart';
import 'package:kph_school/size_configutation.dart';
import 'package:kph_school/components/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rappelMoi = false;

  Widget _contenaireEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Email",
        //   style: GlabelStyle,
        // ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: GboxDecorationStyle,
          height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter votre Email',
              hintStyle: GintTexteStyke,
            ),
          ),
        ),
      ],
    );
  }

  Widget _contenairePassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "mot de passe",
        //   style: GlabelStyle,
        // ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: GboxDecorationStyle,
          height: 50.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter votre mot de passe',
              hintStyle: GintTexteStyke,
            ),
          ),
        ),
      ],
    );
  }

  Widget _contenaireMotPassOblier() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("change pass"),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          "mot de passe oublier",
          style: GlabelStyle,
        ),
      ),
    );
  }

  Widget _chexBoxRememberMe() {
    return Container(
        height: 20.0,
        child: Row(
          children: [
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                  value: _rappelMoi,
                  checkColor: Colors.green,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _rappelMoi = value;
                    });
                  }),
            ),
            Text(
              "se souvenir de moi",
              style: GlabelStyle,
            ),
          ],
        ));
  }

  Widget _containerLogin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => newHomeScreen(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          "connecter",
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _contenaireConnectAvec() {
    return Column(
      children: [
        Text(
          '- OU -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'connectez-vous avec',
          style: GlabelStyle,
        ),
      ],
    );
  }

  Widget _boutonReseauSociaux(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
            image: DecorationImage(
              image: logo,
            )),
      ),
    );
  }

  Widget _boutonReseauxSociauxRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _boutonReseauSociaux(
              () => print("connecter avec facebook"),
              AssetImage(
                'assets/logos/facebook.jpg',
              )),
          _boutonReseauSociaux(
            () => print('connecter avec google'),
            AssetImage('assets/logos/google.jpg'),
          ),
        ],
      ),
    );
  }

  Widget _boutonConnecter() {
    return GestureDetector(
      onTap: () => newConnectScreen(),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Vous n\'avez pas de compte?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 's\'inscrire',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF73AEF5),
                      Color(0xFF61A4F1),
                      Color(0xFF478DE0),
                      Color(0xFF398AE5),
                    ],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Connectez-vous",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSnas',
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenaireEmail(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenairePassword(),
                      _contenaireMotPassOblier(),
                      _chexBoxRememberMe(),
                      _containerLogin(),
                      _contenaireConnectAvec(),
                      _boutonReseauxSociauxRow(),
                      _boutonConnecter(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void newConnectScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return Connect();
    }));
  }

  void newHomeScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return ;
    }));
  }
}
