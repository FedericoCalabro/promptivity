import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CounterController {
  final int count;
  final VoidCallback increment;
  final VoidCallback decrement;

  const CounterController({
    required this.count,
    required this.increment,
    required this.decrement,
  });
}

CounterController useCounter(int initialValue) {
  final counter = useState(initialValue);
  void increment() => counter.value++;
  void decrement() => counter.value--;

  return CounterController(
    count: counter.value,
    increment: increment,
    decrement: decrement,
  );
}

class CounterWidget extends HookWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useCounter(0);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Count: ${counter.count}', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: counter.increment, icon: const Icon(Icons.remove)),
              IconButton(onPressed: counter.decrement, icon: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
