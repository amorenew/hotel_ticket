import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_ticket/application/bloc/events_bloc.dart';
import 'package:hotel_ticket/domain/respositories/event/event_repository.dart';
import 'package:hotel_ticket/presentation/ThemeManager.dart';
import 'package:hotel_ticket/presentation/reservation_ticket.dart';
import 'package:hotel_ticket/presentation/theme_switch_button.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EventsBloc(
        RepositoryProvider.of<EventRepository>(context),
      ),
      child: SafeArea(
        child: Consumer<ThemeNotifier>(
          builder: (context, theme, _) {
            final isLightMode = theme.isLightMode();

            context.read<EventsBloc>().add(ListEvents());

            return MaterialApp(
              theme: theme.getTheme(),
              home: Scaffold(
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  color: theme.getTheme().primaryColor,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      ThemeWidget(theme: theme),
                      const Spacer(),
                      OpenReservationButton(isLightMode: isLightMode),
                      const SizedBox(height: 24),
                      ShowIOSTicket(isLightMode: isLightMode),
                      const SizedBox(height: 24),
                      ShowAndroidTicket(isLightMode: isLightMode),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .05,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

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
        onPressed: () {},
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
        onPressed: () {},
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
              return const FractionallySizedBox(
                heightFactor: 0.9,
                child: ReservationTicket(),
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

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({
    super.key,
    required this.theme,
  });

  final ThemeNotifier theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/theme.svg',
          width: 26,
          height: 26,
          colorFilter: ColorFilter.mode(
            theme.getTheme().iconTheme.color!,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 8),
        const Expanded(
          child: Text(
            'Theme',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 95,
          child: ThemeSwitchButton(
            isLightMode: theme.isLightMode(),
            onPressed: () {
              if (theme.isLightMode()) {
                theme.setDarkMode();
                return;
              }
              theme.setLightMode();
            },
          ),
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  final bool isHalfLeft;
  final Color color;
  MyPainter({
    required this.isHalfLeft,
    this.color = Colors.red,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(isHalfLeft ? size.height / 1 : 0, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi / (isHalfLeft ? 2 : -2),
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class DashedLinePainter extends CustomPainter {
  final double dashWidth, dashSpace, strokeWidth;
  final Color color;

  DashedLinePainter({
    super.repaint,
    this.dashWidth = 9,
    this.dashSpace = 5,
    this.strokeWidth = 1,
    this.color = Colors.orange,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;

    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
