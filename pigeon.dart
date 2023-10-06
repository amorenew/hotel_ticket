import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/ticket_data.g.dart',
  dartOptions: DartOptions(),
  kotlinOut: 'android/app/src/main/kotlin/com/example/hotel_ticket/TicketData.g.kt',
  kotlinOptions: KotlinOptions(package: 'com.example.hotel_ticket'),
  //swiftOut: 'ios/Runner/TicketData.g.swift',
  dartPackageName: 'hotel_ticket',
))
@HostApi()
abstract class TicketHostApi {
  @async
  bool sendTicketData(TicketData ticketData);
}

enum Code { one, two }

class TicketData {
  TicketData({required this.code, required this.data});
  String? name;
  String? description;
  Code code;
  Map<String?, String?> data;
}
