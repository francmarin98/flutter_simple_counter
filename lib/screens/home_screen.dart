import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Propiedad
  int counter = 10;

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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(
              Icons.exposure_minus_1_outlined,
            ),
            tooltip: 'Decrement',
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.exposure_zero_outlined,
            ),
            tooltip: 'Reset',
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.exposure_plus_1_outlined,
            ),
            tooltip: 'Increment',
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
