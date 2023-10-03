import 'package:flutter/material.dart';
import 'package:hotel_ticket/application/bloc/events_bloc.dart';
import 'package:hotel_ticket/presentation/theme_manager.dart';
import 'package:provider/provider.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isLightMode =
        Provider.of<ThemeNotifier>(context, listen: false).isLightMode();

    return Center(
      child: OutlinedButton(
        key: const Key('retryButton'),
        style: OutlinedButton.styleFrom(
          backgroundColor: isLightMode ? const Color(0xFF0E1A2D) : Colors.white,
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () => context.read<EventsBloc>().add(ListEvents()),
        child: Text(
          'Retry',
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
