import 'package:flutter/material.dart';
import 'package:hotel_ticket/presentation/theme_manager.dart';
import 'package:provider/provider.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
    required this.hotelName,
    required this.address,
  });

  final String hotelName, address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location:',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 10,
                    bottom: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotelName,
                        textAlign: TextAlign.left,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                      ),
                      Text(
                        'Address: $address',
                        textAlign: TextAlign.left,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Provider.of<ThemeNotifier>(context, listen: false)
                              .isLightMode()
                          ? 'assets/images/map_light.png'
                          : 'assets/images/map_dark.png',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
