import 'package:flutter/material.dart';

class HandleWidget extends StatelessWidget {
  const HandleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        color: Color(0xFF938F93),
      ),
      child: Center(
        child: Container(
          width: 55,
          height: 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
