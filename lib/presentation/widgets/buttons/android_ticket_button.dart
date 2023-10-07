import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_ticket/application/bloc/events_bloc.dart';
import 'package:hotel_ticket/presentation/widgets/buttons/retry_button.dart';
import 'package:hotel_ticket/ticket_data.g.dart';

class ShowAndroidTicket extends StatelessWidget {
  const ShowAndroidTicket({
    super.key,
    required this.isLightMode,
  });

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 286,
      height: 50,
      child: BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state.reservations.isEmpty) {
            return const RetryButton();
          }

          return TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF0E1A2D),
            ),
            onPressed: () {
              final reservation = state.reservations.first;
              final stay = reservation.stays!.first;
              final userTicket = reservation.userTickets!.first;

              TicketHostApi().sendTicketData(TicketData(
                imageUrl: userTicket.ticketUserData!.avatar!,
                name: stay.name!,
                ticketNumber: userTicket.ticketSystemId!,
                type: userTicket.ticketTypeName!,
                seat: userTicket.seat!,
              ));
            },
            child: Text(
              'Show Android Ticket',
              style: TextStyle(
                color: isLightMode ? const Color(0xFF0E1A2D) : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
