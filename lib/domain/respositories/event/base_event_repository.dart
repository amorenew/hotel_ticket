import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hotel_ticket/data/models/events_response.dart';

abstract class BaseEventRepository {
  Future<Either<EventError, List<Reservation>>> getEvents();
}

class EventError extends Error {
  EventError(this.error);

  final dynamic error;
}
