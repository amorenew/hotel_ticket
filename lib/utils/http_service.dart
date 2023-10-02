import 'package:flutter/material.dart';
import 'package:hotel_ticket/constant/credentials.dart';
import 'package:hotel_ticket/constant/urls.dart';
import 'package:http/http.dart' as http;

Future<http.Response?> apiCall({
  required String url,
  Map<String, String>? body,
}) async {
  var endPoint = Uri.https(domain, url);
  try {
    return await http.get(
      endPoint,
      headers: {'Authorization': 'Bearer ${Credential.clientToken}'},
    );
  } catch (ex) {
    debugPrint(ex.toString());
    return null;
  }
}
