import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/provider1.dart';
import 'model/person.dart';
import 'providers/provider2.dart';
import 'widgets/test_widget.dart';
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

// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String strValue = ref.watch(dureeStrProvider);
    final int intValue = ref.watch(countProvider);
    final String test = ref.watch(isRunningProvider);
    CounterAction action = ref.watch(counterActionProvider.notifier);
    return MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RIVERPOD Example'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.yellowAccent,
        ),
        body: Center(
          child: Column(
            children: [
              Text('Count : $intValue', style: const TextStyle(fontSize: 30)),
              Text(strValue, style: const TextStyle(fontSize: 30)),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print('Start');
                        action.start();
                      },
                      child:
                          const Text('Start', style: TextStyle(fontSize: 30))),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        print('stop');
                        action.stop();
                      },
                      child:
                          const Text('Stop', style: TextStyle(fontSize: 30))),
                  const SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {
                        print('reset');
                        action.reset();
                      },
                      child:
                          const Text('Reset', style: TextStyle(fontSize: 30))),
                ],
              ),
              Text('counter : $test', style: const TextStyle(fontSize: 30)),
              const TestWidget(),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    ref.read(changePersonProvider);
                  },
                  child: const Text('change person',
                      style: TextStyle(fontSize: 30))),
              //const JsonWidget(),
              const TestWidget2()
            ],
          ),
        ),
      ),
    );
  }
}
