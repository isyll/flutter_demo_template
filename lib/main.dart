import 'package:flutter/material.dart';
import 'package:flutter_demo_template/app.dart';
import 'package:flutter_demo_template/shared/config/environment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  Environment.printConfig();
  runApp(const ProviderScope(child: App()));
}
