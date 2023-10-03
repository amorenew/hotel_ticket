import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_ticket/application/bloc/events_bloc.dart';
import 'package:hotel_ticket/presentation/widgets/buttons/retry_button.dart';
import 'package:hotel_ticket/presentation/widgets/reservation_ticket.dart';

class OpenReservationButton extends StatelessWidget {
  const OpenReservationButton({
    super.key,
    required this.isLightMode,
  });

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 286,
      height: 50,
      child: OutlinedButton(
        key: const Key('openReservation'),
        style: OutlinedButton.styleFrom(
          backgroundColor: isLightMode ? const Color(0xFF0E1A2D) : Colors.white,
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isDismissible: true,
            isScrollControlled: true,
            enableDrag: true,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return FractionallySizedBox(
                heightFactor: 0.9,
                child: BlocBuilder<EventsBloc, EventsState>(
                  builder: (context, state) {
                    if (state.reservations.isEmpty) {
                      return const RetryButton();
                    }

                    return ReservationTicket(
                      reservation: state.reservations.first,
                    );
                  },
                ),
              );
            },
          );
        },
        child: Text(
          'Open Reservation',
          style: TextStyle(
            color:
                isLightMode ? const Color(0xFFE0E6F3) : const Color(0xFF0E1A2D),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
