import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:custom_progress_dialog/custom_progress_dialog.dart';
import 'package:app_neg_afi/Utils/globals.dart';

void isBusy(bool active, [String mensaje = '']) {
  if(active) {
    isBusyGlobal = ProgressDialog();
    String isBusyMsg = "Espere...";
    if(mensaje != '') {
      isBusyMsg = mensaje;
    }
    isBusyGlobal.showProgressDialog(
      contextGlobal,
      textToBeDisplayed: isBusyMsg,
    );
  } else {
    isBusyGlobal.dismissProgressDialog(contextGlobal);
  }
}

void msg(String titulo, String cuerpo, [int tipo = 0]) {
  Color colorMsg = Color(0xFFAED6F1);
  IconData iconoMsg = FontAwesomeIcons.info;
  if(tipo == 1) {
    colorMsg = Color(0xFFA9DFBF);
    iconoMsg = FontAwesomeIcons.check;
  } else if(tipo == 2) {
    colorMsg = Color(0xFFF7DC6F);
    iconoMsg = FontAwesomeIcons.exclamationTriangle;
  } else if(tipo == 3) {
    colorMsg = Color(0xFFF1948A);
    iconoMsg = FontAwesomeIcons.times;
  }
  showDialog(
    context: contextGlobal,
    builder: (BuildContext contextDialog) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0)
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      SizedBox(height: 5,),
                      Text(cuerpo, style: TextStyle(fontSize: 20),),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Text(
                              "Cerrar",
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(colorMsg),
                          elevation: MaterialStateProperty.all(0),
                        ),
                        onPressed: () {
                          Navigator.of(contextDialog).pop();
                        },
                      ),
                    ],
                  ),
                ), 
              ),
            ),
            Positioned(
              top: -60,
              child: CircleAvatar(
                backgroundColor: colorMsg,
                radius: 60,
                child: Icon(
                  iconoMsg,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ],
        )
      );
    }
  );
}