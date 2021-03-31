import 'package:local_auth/local_auth.dart';
import 'package:app_neg_afi/Utils/commons.dart';
import 'package:app_neg_afi/Utils/webApiProvider.dart';

void iniciarSesion() async {
  try {
    isBusy(true);
    Map body = {
      "grant_type": "password",
      "username": "TGOMEZ",
      "password": "Mtg236GW9",
    };
    var result = await postAsync("token", body);
    if(result != null) {
      if(result.length > 0) {
        isBusy(false);
        msg("Ok!", "Bienvenido!", 1);
      } else {
        isBusy(false);
        msg("Atención!", "Usuario y/o contraseña incorrectos", 2);
      }
    } else {
      isBusy(false);
      msg("Error", "Ocurrió un problema al intentar iniiciar sesión", 3);
    }
  } catch(e) {
      isBusy(false);
      msg("Error", e.toString(), 3);
  }
}

void iniciarSesionBiometricos() async {
  var authentication = LocalAuthentication();
  bool usuarioAutenticado = await authentication.authenticate(
    localizedReason: "Por favor, identifiquese"
  );
  if(usuarioAutenticado) {
    msg("Ok!", "Bienvenido!", 1);
  } else {
    msg("Atención!", "Identidad desconocida", 2);
  }
}