import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_ticket/presentation/theme_manager.dart';
import 'package:hotel_ticket/presentation/widgets/buttons/theme_switch_button.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({
    super.key,
    required this.theme,
  });

  final ThemeNotifier theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/theme.svg',
          width: 26,
          height: 26,
          colorFilter: ColorFilter.mode(
            theme.getTheme().iconTheme.color!,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 8),
        const Expanded(
          child: Text(
            'Theme',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 95,
          child: ThemeSwitchButton(
            isLightMode: theme.isLightMode(),
            onPressed: () {
              if (theme.isLightMode()) {
                theme.setDarkMode();
                return;
              }
              theme.setLightMode();
            },
          ),
        ),
      ],
    );
  }
}
