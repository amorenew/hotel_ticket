import 'package:flutter/material.dart';

class ThemeSwitchButton extends StatefulWidget {
  const ThemeSwitchButton({
    super.key,
    this.size = 40,
    this.isLightMode = true,
    required this.onPressed,
  });

  final double size;
  final bool isLightMode;
  final VoidCallback onPressed;

  @override
  State<ThemeSwitchButton> createState() => _ThemeSwitchButtonState();
}

class _ThemeSwitchButtonState extends State<ThemeSwitchButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          color: widget.isLightMode
              ? const Color(0xFFE3E3E3)
              : const Color(0xFF35383E),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: widget.isLightMode
                ? const Color(0xFF04132B)
                : const Color(0xFF565F6D),
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.isLightMode
                  ? 'assets/images/moon.png'
                  : 'assets/images/toggle_light.png',
              width: widget.size,
              height: widget.size,
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              widget.isLightMode
                  ? 'assets/images/toggle_dark.png'
                  : 'assets/images/sun.png',
              width: widget.size,
              height: widget.size,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
