import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/ticket_data.g.dart',
  dartOptions: DartOptions(),
  kotlinOut:
      'android/app/src/main/kotlin/com/example/hotel_ticket/TicketData.g.kt',
  kotlinOptions: KotlinOptions(package: 'com.example.hotel_ticket'),
  swiftOut: 'ios/Runner/TicketData.g.swift',
  dartPackageName: 'hotel_ticket',
))
@HostApi()
abstract class TicketHostApi {
  @async
  bool sendTicketData(TicketData ticketData);
}

class TicketData {
  final String name;
  final String imageUrl;
  final String ticketNumber;
  final String type;
  final String seat;

  TicketData({
    required this.name,
    required this.imageUrl,
    required this.ticketNumber,
    required this.type,
    required this.seat,
  });
}
