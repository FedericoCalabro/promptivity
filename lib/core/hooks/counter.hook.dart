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
