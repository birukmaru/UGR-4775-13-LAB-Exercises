import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter with Provider',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 2, 2, 0)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 78, 224, 82),
          title: Center(child: const Text("Counter using Provider")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'The value for  the counter is: ',
              ),
              Consumer<Counter>(
                builder: (context, counter, child) {
                  return Text(
                    '${counter.count}',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  );
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () {
                  Provider.of<Counter>(context, listen: false)
                      .increment(context);
                },
                child: const Text(
                  'Increment',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Provider.of<Counter>(context, listen: false)
                      .decrement(context);
                },
                child: const Text(
                  'Decrement',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment(BuildContext context) {
    _count++;
    notifyListeners();
  }

  void decrement(BuildContext context) {
    if (_count > 0) {
      _count--;
    }
    notifyListeners();
  }
}
