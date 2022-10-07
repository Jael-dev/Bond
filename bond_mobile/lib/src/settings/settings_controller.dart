import 'package:flutter/material.dart';

import 'settings_service.dart';
class SettingsController with ChangeNotifier {
  SettingsController(this._settingsService);
  final SettingsService _settingsService;

  late ThemeMode _themeMode;
  late String _localeString;
  
  ThemeMode get themeMode => _themeMode;
  Locale get locale => Locale(_localeString);

  Future<void> loadSettings() async {
    _themeMode = await _settingsService.themeMode();
    _localeString = await _settingsService.localeString();
    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;
    if (newThemeMode == _themeMode) return;
    await _settingsService.updateThemeMode(newThemeMode);
    _themeMode = newThemeMode;
    notifyListeners();
  }

   Future<void> updateLocale(String? newLocaleString) async {
    if (newLocaleString == null) return;
    if (newLocaleString == _localeString) return;
    await _settingsService.updateLocaleString(newLocaleString);

    _localeString = newLocaleString;

    notifyListeners();
  }
}
