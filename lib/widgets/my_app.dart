// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../providers/provider1.dart';
import '../providers/provider2.dart';
import 'test_widget.dart';

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
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    copyCountToPerson(ref);
                  },
                  child: const Text('copy count to person',
                      style: TextStyle(fontSize: 30))),
              //const JsonWidget(),
              const SizedBox(height: 30),
              const TestWidget2()
            ],
          ),
        ),
      ),
    );
  }
}
