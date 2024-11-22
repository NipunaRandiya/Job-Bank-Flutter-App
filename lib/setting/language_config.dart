import 'dart:convert';
import 'package:flutter/services.dart';

class AppBarTitles {
  static Map<String, String> titles = {};

  static Future<void> loadTitles() async {
    // Load the JSON file from assets
    String jsonString =
        await rootBundle.loadString('assets/language/language.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    // Convert the JSON map to a simple map of page titles
    titles = jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  static String getTitle(String pageName) {
    return titles[pageName] ?? 'Default Title';
  }
}



//-------------------
/*class AppConfig {
  final String appName;
  final String homeButton;

  AppConfig({required this.appName, required this.homeButton});

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    return AppConfig(
      appName: json['app_name'],
      homeButton: json['Home Button'],
    );
  }
}

Future<AppConfig> loadAppConfig() async {
  // Load the JSON file from assets
  String jsonString =
      await rootBundle.loadString('assets/language/language.json');

  // Parse the JSON string
  final Map<String, dynamic> jsonMap = json.decode(jsonString);

  // Return an instance of AppConfig
  return AppConfig.fromJson(jsonMap);
}*/
