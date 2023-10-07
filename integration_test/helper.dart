import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:integration_test/integration_test.dart';

takeScreenshot(tester, IntegrationTestWidgetsFlutterBinding binding) async {
  if (kIsWeb) {
    await binding.takeScreenshot('test-screenshot');
    return;
  } else if (Platform.isAndroid) {
    await binding.convertFlutterSurfaceToImage();
    await tester.pumpAndSettle();
  }
  await binding.takeScreenshot('test-screenshot');
}
