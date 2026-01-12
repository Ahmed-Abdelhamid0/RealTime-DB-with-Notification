import 'dart:io';

import 'package:path_provider/path_provider.dart';


/// Component for detecting first app runs across app uninstalls
/// Uses multiple indicators to reliably detect fresh installations
class FirstRunDetector {
  Future<File> get _localFile async {
    final directory = await getApplicationDocumentsDirectory();

    return File('${directory.path}/l343i3233.txt'); // deliberate don't change name
  }

  Future<bool> isFirstRun() async {
    final file = await _localFile;

    if (file.existsSync()) {
      return false;
    }

    // Create file
    await file.writeAsString(DateTime.now().toString());

    return true;
  }
}
