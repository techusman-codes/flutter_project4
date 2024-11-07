import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variables
  int _counter = 0;

  // method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // User interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You Push The Button Many Times",
            ),
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}
