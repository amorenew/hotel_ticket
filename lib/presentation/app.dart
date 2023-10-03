import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_ticket/application/bloc/events_bloc.dart';
import 'package:hotel_ticket/domain/respositories/event/event_repository.dart';
import 'package:hotel_ticket/presentation/widgets/buttons/android_ticket_button.dart';
import 'package:hotel_ticket/presentation/widgets/buttons/iOS_ticket_button.dart';
import 'package:hotel_ticket/presentation/widgets/buttons/reservation_button.dart';
import 'package:hotel_ticket/presentation/theme_manager.dart';
import 'package:hotel_ticket/presentation/widgets/theme_widget.dart';
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
                  child: HomeContent(
                    isLightMode: isLightMode,
                    theme: theme,
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

class HomeContent extends StatelessWidget {
  final ThemeNotifier theme;

  const HomeContent({
    super.key,
    required this.isLightMode,
    required this.theme,
  });

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
