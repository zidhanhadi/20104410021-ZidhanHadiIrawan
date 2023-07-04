import 'package:flutter/material.dart';

class AppStateful extends StatefulWidget {
  @override
  _AppStatefulState createState() => _AppStatefulState();
}

class _AppStatefulState extends State<AppStateful> {
  List<int> numbers = [];

  @override
  void initState() {
    super.initState();
    generateNumbers();
  }

  void generateNumbers() {
    for (int i = 1; i <= 100; i++) {
      if (i % 3 == 0) {
        numbers.add(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Number: ${numbers[index]}'),
          );
        },
      ),
    );
  }
}
