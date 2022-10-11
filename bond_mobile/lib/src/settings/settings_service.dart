import 'dart:io';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  final Future<SharedPreferences> _prefsFuture =
      SharedPreferences.getInstance();

// Contact list 


  Future<ThemeMode> themeMode() async {
    SharedPreferences preferences = await _prefsFuture;

    String themeString;
    ThemeMode themeMode;
    try {
      themeString = preferences.getString('themeMode') ?? 'system';
    } catch (e) {
      themeString = 'system';
    }

    switch (themeString) {
      case 'system':
        themeMode = ThemeMode.system;
        break;
      case 'dark':
        themeMode = ThemeMode.dark;
        break;
      case 'light':
        themeMode = ThemeMode.light;
        break;
      default:
        themeMode = ThemeMode.system;
    }
    return themeMode;
  }

  Future<String> localeString() async {
    SharedPreferences? preferences = await _prefsFuture;
    String localeString;
    String deviceLocaleString = Platform.localeName.substring(0, 2);

    try {
      localeString =
          preferences.getString('localeString') ?? deviceLocaleString;
    } catch (e) {
      localeString = deviceLocaleString;
    }
    return localeString;
  }

  Future<void> updateThemeMode(ThemeMode theme) async {
    SharedPreferences? preferences = await _prefsFuture;
    switch (theme) {
      case ThemeMode.system:
        preferences.setString('themeMode', 'system');
        break;
      case ThemeMode.dark:
        preferences.setString('themeMode', 'dark');
        break;
      case ThemeMode.light:
        preferences.setString('themeMode', 'light');
        break;
    }

    return;
  }

  // Persists the user's preferred Locale to Local or remote storage.
  Future<void> updateLocaleString(String localeString) async {
    SharedPreferences? preferences = await _prefsFuture;
    preferences.setString('localeString', localeString);

    return;
  }
}
