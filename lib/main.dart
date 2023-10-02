import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_ticket/presentation/ThemeManager.dart';
import 'package:hotel_ticket/data/providers/user_event/event_provider.dart';
import 'package:hotel_ticket/domain/respositories/event/event_repository.dart';
import 'package:hotel_ticket/presentation/app.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
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
}
