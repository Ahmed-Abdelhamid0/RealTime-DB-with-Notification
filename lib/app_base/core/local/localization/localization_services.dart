import 'package:flutter/material.dart';
import 'package:realtime_ex/app_base/shared/localization_constants/localization_constants.dart';
import 'package:realtime_ex/l10n/app_localizations.dart';

class LocalizationService {
  late Locale _currentLocale;
  final Locale _defaultLocale = const Locale('en');

  LocalizationService() {
    _currentLocale = _defaultLocale;
  }

  Locale get currentLocale => _currentLocale;

  String get checkInternetConnection => LocalizationConstants.checkInternetConnection;

  bool isRtl(BuildContext context) {
    return Directionality.of(context) == TextDirection.rtl;
  }

  List<LocalizationsDelegate<dynamic>> get localizationsDelegates => AppLocalizations.localizationsDelegates;

  List<Locale> get supportedLocales => AppLocalizations.supportedLocales;
}
