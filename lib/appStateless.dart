import 'package:flutter/material.dart';

class AppStateless extends StatelessWidget {
  List<int> generateNumbers() {
    List<int> numbers = [];
    for (int i = 1; i <= 100; i++) {
      if (i % 3 == 0) {
        numbers.add(i);
      }
    }
    return numbers;
  }

  @override
  Widget build(BuildContext context) {
    List<int> numbers = generateNumbers();

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
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
