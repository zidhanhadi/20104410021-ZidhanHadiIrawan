import 'package:flutter/material.dart';
import 'package:flutter_application_livecoding/appStateful.dart';
import 'package:flutter_application_livecoding/appStateless.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelipatan 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Kelipatan 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bilangan Kelipatan 3:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Tambah 3'),
            ),
            SizedBox(height: 16),
            AppStatefulWidget(), // Perubahan pada baris ini
            SizedBox(height: 16),
            StatelessWidgetWidget(),
          ],
        ),
      ),
    );
  }
}
