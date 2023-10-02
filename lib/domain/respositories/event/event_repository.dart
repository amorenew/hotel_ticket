import 'package:dartz/dartz.dart';
import 'package:hotel_ticket/data/models/events_response.dart';
import 'package:hotel_ticket/data/providers/user_event/base_event_provider.dart';
import 'package:hotel_ticket/domain/respositories/event/base_event_repository.dart';

class EventRepository extends BaseEventRepository {
  EventRepository(this._provider);

  final BaseEventProvider _provider;

  @override
  Future<Either<EventError, List<Reservation>>> getEvents() async {
    try {
      final value = await _provider.getEvents();

      return Right(value!.reservations!);
    } catch (e) {
      return Left(EventError(e));
    }
  }
}
