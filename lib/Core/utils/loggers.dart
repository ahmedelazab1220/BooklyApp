import 'dart:developer';

import 'package:flutter/foundation.dart';

class AppLogger {
  static print(message) {
    if (!kReleaseMode) {
      log(message.toString());
    }
  }
}
