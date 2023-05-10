import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      if (_counter == 10) {
        _counter = 1;
      } else {
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF10497E),
        title: const Text('Counter App'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(160),
            ),
            elevation: 10,
            child: SizedBox(
                width: 200,
                height: 200,
                child: Center(
                    child: Text(
                  "$_counter",
                  style: const TextStyle(fontSize: 20),
                )))),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF10497E),
        onPressed: () => _incrementCounter(),
        tooltip: 'Add Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
