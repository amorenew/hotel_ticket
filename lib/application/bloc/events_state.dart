part of 'events_bloc.dart';

class EventsState with EquatableMixin {
  EventsState({
    required this.isLoading,
    this.success = true,
    this.error = '',
    this.reservations = const [],
  });
  final bool isLoading;
  final List<Reservation> reservations;
  final bool success;
  final String error;

  @override
  List<Object?> get props => [isLoading, success, reservations, error];

  EventsState copyWith({
    bool isLoading = false,
    bool success = false,
    List<Reservation>? reservations,
    String error = '',
  }) =>
      EventsState(
        isLoading: isLoading,
        success: success,
        reservations: reservations ?? this.reservations,
        error: error,
      );
}
