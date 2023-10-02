part of 'events_bloc.dart';

@immutable
abstract class EventsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ListEvents extends EventsEvent {
  ListEvents();

  @override
  List<Object> get props => [];
}
