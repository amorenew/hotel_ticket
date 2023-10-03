import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_ticket/presentation/widgets/dashed_line_painter.dart';

class TicketWidget extends StatelessWidget {
  const TicketWidget({
    super.key,
    required this.name,
    required this.profileImage,
    required this.ticketNumber,
    required this.type,
    required this.seat,
  });

  final String name, profileImage, ticketNumber, type, seat;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tickets:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardTheme.color,
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                height: 75,
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    Container(
                      width: 34,
                      height: 34,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(profileImage),
                            fit: BoxFit.fitWidth),
                        borderRadius: const BorderRadius.all(
                          Radius.elliptical(34, 34),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '#$ticketNumber',
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    height: 1.3,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const TicketDivider(),
              Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Ticket Type:',
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                  ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          type,
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    height: 1.3,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Seat:',
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                  ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          seat,
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    height: 1.3,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TicketDivider extends StatelessWidget {
  const TicketDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 14,
      child: Stack(
        children: [
          Positioned(
            left: -7,
            right: -7,
            top: 0,
            bottom: 0,
            child: Row(
              children: [
                Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Theme.of(context).bottomSheetTheme.backgroundColor,
                    borderRadius: const BorderRadius.all(
                      Radius.elliptical(14, 14),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 14,
                    child: CustomPaint(
                      painter: DashedLinePainter(
                        color:
                            Theme.of(context).bottomSheetTheme.backgroundColor!,
                        dashSpace: 2,
                        dashWidth: 2,
                        strokeWidth: 1,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Theme.of(context).bottomSheetTheme.backgroundColor,
                    borderRadius: const BorderRadius.all(
                      Radius.elliptical(14, 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
