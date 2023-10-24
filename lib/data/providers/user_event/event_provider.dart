import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hotel_ticket/data/models/events_response.dart';
import 'package:hotel_ticket/data/providers/user_event/base_event_provider.dart';
import 'package:hotel_ticket/utils/http_service.dart';
import 'package:hotel_ticket/constant/urls.dart';

class EventProvider extends BaseEventProvider {
  @override
  Future<EventsResponse?> getEvents({bool useAssets = true}) async {
    if (useAssets) {
      final localResponse = await loadEventsFromAssets();
      var data = json.decode(localResponse);
      return EventsResponse.fromJson(data);
    }

    var response = await apiCall(url: urlListEvents);
    if (response?.statusCode == 200) {
      var data = json.decode(response.toString());
      return EventsResponse.fromJson(data);
    } else {
      return EventsResponse(error: true);
    }
  }

  Future<String> loadEventsFromAssets() async =>
      await rootBundle.loadString('assets/response.json');
}
