import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_ticket/data/models/events_response.dart';
import 'package:hotel_ticket/domain/respositories/event/event_repository.dart';
import 'package:logger/logger.dart';

part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventRepository _eventRepository;

  EventsBloc(this._eventRepository)
      : super(EventsState(
          isLoading: false,
        )) {
    on<ListEvents>(
      (event, emit) async {
        await _onListEvents(event, emit);
      },
    );
  }

  Future<void> _onListEvents(
    ListEvents event,
    Emitter<EventsState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final eventResponse = await _eventRepository.getEvents();

    eventResponse.fold(
      (error) {
        Logger().e(
          "error: $error, ${error.error} |  | ${(error.error is Error) ? (error.error as Error).stackTrace : ''}",
        );
        emit(
          state.copyWith(
            error: error.error.toString(),
          ),
        );
      },
      (events) {
        emit(
          state.copyWith(
            success: true,
            reservations: events,
          ),
        );
      },
    );
  }
}
