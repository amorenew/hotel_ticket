import 'package:flutter/material.dart';
import 'package:hotel_ticket/ticket_data.g.dart';

class ShowIOSTicket extends StatelessWidget {
  const ShowIOSTicket({
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
        style: OutlinedButton.styleFrom(
          shape: const BeveledRectangleBorder(),
          side: BorderSide(
            width: .7,
            color: isLightMode ? const Color(0xFF0E1A2D) : Colors.white,
          ),
        ),
        onPressed: () {
          TicketHostApi().sendTicketData(TicketData(
            imageUrl: 'https://www.google.com',
            name: 'Amr',
            ticketNumber: '21',
            type: 'dasas',
            seat: 'ad',
          ));
        },
        child: Text(
          'Show IOS Ticket',
          style: TextStyle(
            color: isLightMode ? const Color(0xFF0E1A2D) : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
