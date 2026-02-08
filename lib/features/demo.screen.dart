import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:promptivity/core/di.dart';
import 'package:promptivity/shared/theme/theme.aio.service.dart';
import 'package:promptivity/shared/widgets/counter.aio.widget.dart';

class DemoScreen extends HookWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = getIt<ThemeService>();
    final themeMode = useThemeMode();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Demo Screen'),
        actions: [
          IconButton(
            icon: Icon(themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => themeService.toggleTheme(),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            CounterWidget(),
            Divider(),
            CounterWidget(),
          ],
        ),
      ),
    );
  }
}
