import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kph_school/screens/login_screen.dart';

import '../constants.dart';


class Connect extends StatefulWidget {
  Connect({Key key}) : super(key: key);

  @override
  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {


  Widget _contenaireNom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Nom",
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
                Icons.account_circle,
                color: Colors.white,
              ),
              hintText: 'Enter votre Nom',
              hintStyle: GintTexteStyke,
            ),
          ),
        ),
      ],
    );
  }


  Widget _contenairePrenom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Prenom",
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
                Icons.account_circle,
                color: Colors.white,
              ),
              hintText: 'Enter votre Prenom',
              hintStyle: GintTexteStyke,
            ),
          ),
        ),
      ],
    );
  }

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
                Icons.date_range,
                color: Colors.white,
              ),
              hintText: '24/09/1999',
              hintStyle: GintTexteStyke,
            ),
          ),
        ),
      ],
    );
  }

  Widget _contenaireDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Prenom",
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
            keyboardType: TextInputType.datetime,
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
  
Widget _contenaireNiveauEtude(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Prenom",
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
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.school_rounded,
                color: Colors.white,
              ),
              hintText: 'Enter votre niveau d\'etude',
              hintStyle: GintTexteStyke,
            ),
          ),
        ),
      ],
    );
  }
Widget _contenaireEcole(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "Prenom",
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
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.school_rounded,
                color: Colors.white,
              ),
              hintText: 'Enter votre etablissement',
              hintStyle: GintTexteStyke,
            ),
          ),
        ),
      ],
    );
  }
  


  Widget _boutonConnecter() {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () =>newConnecteLoginScreen(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: Text(
          "connecter",
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans'
          ),
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
                      Text('Inscrivez-vous',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenaireNom(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenairePrenom(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenaireDate(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenaireEmail(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenaireNiveauEtude(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _contenaireEcole(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _boutonConnecter(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        ),
    );
  }

  void newConnecteLoginScreen(){
     Navigator.push(context, 
     MaterialPageRoute(builder: (BuildContext context){
       return LoginScreen();
     }));
  }
}


