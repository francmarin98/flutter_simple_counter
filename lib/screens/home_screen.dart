import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Propiedad
  int counter = 10;

  void increment() {
    setState(() {
      counter = counter + 1;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Variable
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Número de clicks', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButtonGroup(
        decrementFn: decrement,
        incrementFn: increment,
        resetFn: reset,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class FloatingActionButtonGroup extends StatelessWidget {
  final Function incrementFn;
  final Function decrementFn;
  final Function resetFn;

  const FloatingActionButtonGroup({
    Key? key,
    required this.incrementFn,
    required this.decrementFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            tooltip: 'Decrement',
            onPressed: () => decrementFn()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_zero_outlined),
            tooltip: 'Reset',
            onPressed: () => resetFn()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            tooltip: 'Increment',
            onPressed: () => incrementFn()),
      ],
    );
  }
}
