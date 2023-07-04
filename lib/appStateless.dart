import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStateless extends StatelessWidget {
  const AppStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 1 dan UTS PAPB',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('ZIDHAN HADI IRAWAN - NOMOR ABSEN GANJIL'),
        ),
        body: Center(
          child: Text('Bilangan Kelipatan 3 Adalah :', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}