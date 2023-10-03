import 'package:flutter/material.dart';
import 'package:hotel_ticket/presentation/show_ticket.dart';

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
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: const Color(0xFF0E1A2D),
        ),
        onPressed: () => showTicket(context),
        child: Text(
          'Show Android Ticket',
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
