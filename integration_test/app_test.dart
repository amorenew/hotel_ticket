import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotel_ticket/data/providers/user_event/event_provider.dart';
import 'package:hotel_ticket/domain/respositories/event/event_repository.dart';
import 'package:hotel_ticket/presentation/app.dart';
import 'package:hotel_ticket/presentation/theme_manager.dart';
import 'package:integration_test/integration_test.dart';
import 'package:provider/provider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the reservation button, ticket button is visible',
        (tester) async {
      final openReservationFinder = find.byKey(const Key('openReservation'));

      // Load app widget.
      await tester.pumpWidget(
        MultiRepositoryProvider(
          providers: [
            RepositoryProvider<EventRepository>(
              create: (context) => EventRepository(
                EventProvider(),
              ),
            ),
          ],
          child: ChangeNotifierProvider<ThemeNotifier>(
            create: (_) => ThemeNotifier(),
            child: const App(),
          ),
        ),
      );

      // Verify the open reservation button is exist
      expect(openReservationFinder, findsOneWidget);

      expect(find.text('Show Android Ticket'), findsOneWidget);

      // Emulate a tap on the reservation button.
      await tester.tap(openReservationFinder);

      // Trigger a frame.
      await tester.pumpAndSettle();
    });
  });
}
