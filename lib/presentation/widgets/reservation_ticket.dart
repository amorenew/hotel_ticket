import 'package:flutter/material.dart';
import 'package:hotel_ticket/data/models/events_response.dart';
import 'package:hotel_ticket/presentation/widgets/dashed_line_painter.dart';
import 'package:hotel_ticket/presentation/widgets/ticket/handle_widget.dart';
import 'package:hotel_ticket/presentation/widgets/ticket/hotel_check_in_widget.dart';
import 'package:hotel_ticket/presentation/widgets/ticket/hotel_header_image.dart';
import 'package:hotel_ticket/presentation/widgets/ticket/location_widget.dart';
import 'package:hotel_ticket/presentation/widgets/ticket/ticket_widget.dart';

class ReservationTicket extends StatelessWidget {
  final Reservation reservation;

  const ReservationTicket({super.key, required this.reservation});

  @override
  Widget build(BuildContext context) {
    final stay = reservation.stays!.first;
    final userTicket = reservation.userTickets!.first;

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
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
        child: ListView(
          shrinkWrap: true,
          children: [
            const HandleWidget(),
            HotelHeaderImage(
              imageUrl: stay.stayImages!.first,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HotelCheckInWidget(
                    fromDate: reservation.startDate!,
                    toDate: reservation.endDate!,
                    rating: stay.stars!,
                    roomCount: stay.rooms!.first.roomNumber!,
                  ),
                  const SizedBox(height: 40),
                  LocationWidget(
                    hotelName: stay.name!,
                    address: stay.address!,
                  ),
                  const SizedBox(height: 40),
                  TicketWidget(
                    name:
                        '${userTicket.ticketUserData!.firstName!} ${userTicket.ticketUserData!.lastName!}',
                    profileImage: userTicket.ticketUserData!.avatar!,
                    ticketNumber: userTicket.ticketSystemId!,
                    type: userTicket.ticketTypeName!,
                    seat: userTicket.seat!,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 14,
                    child: CustomPaint(
                      painter: DashedLinePainter(
                        color: const Color(0xFFC5C5C5),
                        dashSpace: 4,
                        dashWidth: 4,
                        strokeWidth: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




