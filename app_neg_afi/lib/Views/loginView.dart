import 'package:flutter/material.dart';
import 'package:app_neg_afi/Utils/globals.dart';
import 'package:app_neg_afi/ViewModels/loginViewModel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    contextGlobal = context;
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
             Container(
              padding: const EdgeInsets.only(top: 20),
              height: 75,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF76D7C4)),
                  elevation: MaterialStateProperty.all(0),
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(
                      FontAwesomeIcons.user,
                      size: 16,
                    ),
                    new Text(
                      '  Iniciar Sesión',
                      style: TextStyle(
                        fontSize: 17,
                      )
                    ),
                  ],
                ),
                onPressed: iniciarSesion,
              ),
            ),
            if(biometricosDisponibles)
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: 75,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF5D6D7E)),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Icon(
                        FontAwesomeIcons.fingerprint,
                        size: 16,
                      ),
                      new Text(
                        '  Usar Huella Digital',
                        style: TextStyle(
                          fontSize: 17,
                        )
                      ),
                    ],
                  ),
                  onPressed: iniciarSesionBiometricos,
                ),
              ),
          ]
        )
      ),
    );
  }
}