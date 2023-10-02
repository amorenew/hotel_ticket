import 'dart:convert';

import 'package:hotel_ticket/data/models/events_response.dart';
import 'package:hotel_ticket/data/providers/user_event/base_event_provider.dart';
import 'package:hotel_ticket/utils/http_service.dart';
import 'package:hotel_ticket/constant/urls.dart';

class EventProvider extends BaseEventProvider {
  @override
  Future<EventsResponse?> getEvents() async {
    var response = await apiCall(url: urlListEvents);
    if (response!.statusCode == 200) {
      var data = json.decode(response.body);
      return EventsResponse.fromJson(data);
    } else {
      return EventsResponse(error: true);
    }
  }
}
