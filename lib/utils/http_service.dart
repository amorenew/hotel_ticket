import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:hotel_ticket/constant/credentials.dart';
import 'package:hotel_ticket/constant/urls.dart';

Future<Response?> apiCall({
  required String url,
  Map<String, String>? body,
}) async {
  var endPoint = domain + url;
  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer ${Credential.clientToken}',
  };

  final cacheStore = MemCacheStore(
    maxSize: 10485760,
    maxEntrySize: 1048576,
  );
  final cacheOptions = CacheOptions(
    store: cacheStore,
    maxStale: const Duration(hours: 1), policy: CachePolicy.refresh,
    hitCacheOnErrorExcept: [], // for offline behaviour
  );

  final dio = Dio()
    ..interceptors.add(
      DioCacheInterceptor(options: cacheOptions),
    )
    ..options.headers = headers;

  try {
    var response = await dio.get(
      endPoint,
      options: cacheOptions.toOptions(),
    );

    return response;
  } catch (ex) {
    debugPrint(ex.toString());
    return null;
  }
/*   final headers2 = {
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
  } */
}
