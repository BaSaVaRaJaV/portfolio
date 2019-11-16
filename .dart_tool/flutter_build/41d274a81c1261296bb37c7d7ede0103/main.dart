import 'dart:ui' as ui;

import "file:///home/raj/Documents/Flutter/portfolio/lib/main.dart" as entrypoint;

Future<void> main() async {
  if (true) {
    await ui.webOnlyInitializePlatform();
  }
  entrypoint.main();
}
