import 'package:flutter/foundation.dart';
import 'package:logger/web.dart';

mixin AppSafeLogger {
  void safeLogError(dynamic error) {
    if (kDebugMode) {
      Logger().e(error);
    }
  }

  void safeLogInfo(info) {
    if (kDebugMode) {
      Logger().i(info);
    }
  }
}
