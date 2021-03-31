import 'package:flutter/material.dart';
import 'package:custom_progress_dialog/custom_progress_dialog.dart';
import 'package:app_neg_afi/main.dart';

BuildContext contextGlobal;
final GlobalKey<MyAppState> mainKey = GlobalKey<MyAppState>();

ProgressDialog isBusyGlobal = ProgressDialog();
bool biometricosDisponibles = false;

const String URI_SERVER_TLALOC = "https://tlaloc.bdscorpnet.mx/";

class G {

}

// https://github.com/warmodroid/Alert-dialog-in-Flutter/blob/master/lib/main.dart
// https://www.youtube.com/watch?v=22diZ-l5xXY
// https://medium.com/@deshmukhtejsvi/implementing-biometric-authentication-in-flutter-app-270bd759ea3f
// https://stackoverflow.com/questions/59225943/flutter-project-mainactivity-java-is-missing
// https://stackoverflow.com/questions/62204746/in-flutter-i-am-using-local-auth-0-6-23-package-and-implemented-the-example-co