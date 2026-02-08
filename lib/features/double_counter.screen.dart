import 'package:flutter/material.dart';
import 'package:promptivity/shared/widgets/counter.widget.dart';

class DoubleCounterScreen extends StatelessWidget {
  const DoubleCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Independent Counters'),
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
