import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:promptivity/core/di.dart';
import 'package:promptivity/shared/theme/theme.aio.service.dart';
import 'package:promptivity/features/demo.screen.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  setupDependencyInjection();
  runApp(const MyApp());
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = useThemeMode();

    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: themeMode,
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      home: const DemoScreen(),
    );
  }
}
