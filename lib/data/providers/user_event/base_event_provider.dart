import 'package:hotel_ticket/data/models/events_response.dart';

abstract class BaseEventProvider {
  Future<EventsResponse?> getEvents();
}
