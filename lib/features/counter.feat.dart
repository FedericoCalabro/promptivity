import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

({
  int count,
  VoidCallback increment,
  VoidCallback decrement,
})
useCounter(int initialValue) {
  final counter = useState(initialValue);

  void increment() => counter.value++;
  void decrement() => counter.value--;

  return (
    count: counter.value,
    increment: increment,
    decrement: decrement,
  );
}

class CounterViewController extends HookWidget {
  const CounterViewController({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useCounter(0);
    return CounterView(
      counter: counter.count,
      onIncrement: counter.increment,
      onDecrement: counter.decrement,
    );
  }
}

class CounterView extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const CounterView({
    super.key,
    required this.counter,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Count: $counter', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: .center,
              children: [
                IconButton(onPressed: onDecrement, icon: const Icon(Icons.remove)),
                IconButton(onPressed: onIncrement, icon: const Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
