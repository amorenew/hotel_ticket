import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HotelHeaderImage extends StatelessWidget {
  const HotelHeaderImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: 300,
      fit: BoxFit.fill,
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
