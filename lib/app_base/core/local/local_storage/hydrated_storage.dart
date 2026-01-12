import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<HydratedStorage> initializeHydratedStorage() async {
  HydratedStorage storage;

  if (kIsWeb) {
    storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory.web);
  } else {
    // For mobile platforms (iOS and Android)
    final directory = await getTemporaryDirectory();
    storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory(directory.path));
  }

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    final directory = await getApplicationDocumentsDirectory();
    storage = await HydratedStorage.build(
        storageDirectory: HydratedStorageDirectory(directory.path));
  }

  // Initialize HydratedBloc
  HydratedBloc.storage = storage;

  return storage;
}
