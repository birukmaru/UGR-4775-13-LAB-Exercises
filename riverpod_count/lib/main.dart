import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final riverPodProvider = StateProvider<int>((ref) => 0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RiverPod Flutter',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 14, 15, 14)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 38, 37),
          title: const Center(
              child: Text(
            "Counter using Riverpod",
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: CounterScreen(),
      ),
    );
  }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'The value is :',
            ),
            Consumer(
              builder: (context, ref, child) {
                final count = ref.watch(riverPodProvider);
                return Text(
                  '$count',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 30),
                );
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black)),
              onPressed: () {
                ref.read(riverPodProvider.state).state++;
              },
              child: const Text(
                'Increment',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                final currentValue = ref.read(riverPodProvider);
                if (currentValue > 0) {
                  ref.read(riverPodProvider.state).state = currentValue - 1;
                }
              },
              child: const Text(
                'Decrement',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      );
    });
  }
}
