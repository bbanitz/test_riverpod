import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/provider2.dart';
import 'widgets/my_app.dart';
// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class TestWidget extends ConsumerWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
        color: Colors.cyanAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "testWidget ${ref.watch(dureeStrProvider)}",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
