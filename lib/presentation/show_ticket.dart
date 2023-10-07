import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_ticket/application/bloc/events_bloc.dart';
import 'package:hotel_ticket/presentation/widgets/buttons/retry_button.dart';
import 'package:hotel_ticket/presentation/widgets/ticket/handle_widget.dart';
import 'package:hotel_ticket/presentation/widgets/ticket/ticket_widget.dart';

Future<void> showTicket(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isDismissible: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return BlocBuilder<EventsBloc, EventsState>(
        builder: (context, state) {
          if (state.reservations.isEmpty) {
            return const RetryButton();
          }
          final userTicket = state.reservations.first.userTickets!.first;

          return Container(
            height: 450,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              color: Theme.of(context).bottomSheetTheme.backgroundColor,
            ),
            child: Column(
              children: [
                const HandleWidget(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      top: 30,
                    ),
                    child: Center(
                      child: TicketWidget(
                        name:
                            '${userTicket.ticketUserData!.firstName!} ${userTicket.ticketUserData!.lastName!}',
                        profileImage: userTicket.ticketUserData!.avatar!,
                        ticketNumber: userTicket.ticketSystemId!,
                        type: userTicket.ticketTypeName!,
                        seat: userTicket.seat!,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      );
    },
  );
}
