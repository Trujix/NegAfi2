import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:app_neg_afi/Utils/globals.dart';

Future<dynamic> postAsync(String uri, Object body, [bool bearer = false, String bearerToken = '']) async {
  try {
    return await http.post(
        Uri.parse('$URI_SERVER_TLALOC$uri'),
        body: body,
        headers: { "Content-type": "application/x-www-form-urlencoded"},
      ).then((http.Response response) {
        final int statusCode = response.statusCode;
        if (statusCode < 200 || statusCode > 400 || json == null) {
          return null;
        } else if(statusCode == 400) {
          return {};
        }
        return json.decode(response.body);
      }
    );
  } catch (error) {
    return null;
  }
}