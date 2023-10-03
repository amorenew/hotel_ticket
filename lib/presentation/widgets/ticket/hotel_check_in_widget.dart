import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class HotelCheckInWidget extends StatelessWidget {
  const HotelCheckInWidget({
    super.key,
    required this.fromDate,
    required this.toDate,
    required this.rating,
    required this.roomCount,
  });

  final String fromDate, toDate, roomCount;
  final int rating;

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    DateTime fromDateTime = dateFormat.parse(fromDate);
    DateTime toDateTime = dateFormat.parse(toDate);
    final formattedFromDate = DateFormat.yMMMMd('en_US').format(fromDateTime);
    final formattedToDate = DateFormat.yMMMMd('en_US').format(toDateTime);

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Hotel Check-in',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          'World Cup Match',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontSize: 15,
              ),
        ),
        const SizedBox(height: 40),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'From',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 6),
                Text(
                  formattedFromDate,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                ),
              ],
            ),
            const SizedBox(width: 76),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Till',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 6),
                Text(
                  formattedToDate,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 15,
                        height: 1.5,
                      ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Stars',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 6),
                RatingBar.builder(
                  initialRating: rating.toDouble(),
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color(0xFFFFD979),
                  ),
                  itemSize: 18,
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            const SizedBox(width: 76),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Room Count',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 6),
                Text(
                  roomCount,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 15,
                        height: 1.5,
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
