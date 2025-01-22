import 'package:flutter/foundation.dart';

class Environment {
  static const String environment = String.fromEnvironment(
    'ENV',
    defaultValue: 'development',
  );

  static const String apiBaseUrl = environment == 'production'
      ? 'https://flutter_demo_template.com/api/v1/'
      : 'http://localhost:8080/api/v1/';

  static const bool enableLogging = environment != 'production';

  static const String apiKey =
      environment == 'production' ? 'prod-API-KEY' : 'dev-API-KEY';

  static bool get isDevEnv => environment == 'development';
  static bool get isProdEnv => environment == 'production';

  static void printConfig() {
    if (kDebugMode) {
      print('Environment: $environment');
      print('API Key: $apiKey');
      print('API Base URL: $apiBaseUrl');
      print('Enable Logging: $enableLogging');
    }
  }
}
