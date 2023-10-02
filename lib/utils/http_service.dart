import 'package:flutter/material.dart';
import 'package:hotel_ticket/constant/credentials.dart';
import 'package:hotel_ticket/constant/urls.dart';
import 'package:http/http.dart' as http;

Future<http.Response?> apiCall({
  required String url,
  Map<String, String>? body,
}) async {
  var endPoint = Uri.parse(domain + url);
  final headers2 = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ${Credential.clientToken}',
  };

  try {
    final response = await http.get(
      endPoint,
      headers: headers2,
    );
    return response;
  } catch (ex) {
    debugPrint(ex.toString());
    return null;
  }
}
