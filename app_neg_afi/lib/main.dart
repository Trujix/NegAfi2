import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_neg_afi/Utils/globals.dart';
import 'package:app_neg_afi/Utils/infrastructure.dart';
import 'package:app_neg_afi/Views/loginView.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  MyApp({ Key key }) : super(key: mainKey);
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext contextApp) {
    contextGlobal = contextApp;
    return MaterialApp(
      title: 'AgroVentas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FutureBuilder(
        future: parametrosIniciales(),
        builder: (BuildContext context, snapshot) {
          return LoginPage();
        },
      )
    );
  }
}

Future<void> parametrosIniciales() async {
  await verificarBiometricos();
}