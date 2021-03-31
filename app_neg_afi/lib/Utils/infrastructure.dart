import 'package:app_neg_afi/Utils/globals.dart';
import 'package:local_auth/local_auth.dart';

Future<void> verificarBiometricos() async {
  var authentication = LocalAuthentication();
  await authentication.canCheckBiometrics.then((b) {
    biometricosDisponibles = b;
  });
}