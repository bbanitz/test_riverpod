import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/provider2.dart';

class TestWidget2 extends ConsumerWidget {
  const TestWidget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String json = ref.watch(onePersonProvider).toJson().toString();
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('json widget: $json',
            style: const TextStyle(fontSize: 20, color: Colors.yellow)),
      ),
    );
  }
}
