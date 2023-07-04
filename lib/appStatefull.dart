import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStatefull extends StatefulWidget {
  const AppStatefull({super.key});

  @override
  State<AppStatefull> createState() => _AppStatefullState();
}

class _AppStatefullState extends State<AppStatefull> {
  int angka = 0;

  void ContohIncrement(){
    setState(() {
    angka +=3;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz 1 dan UTS PAPB',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => ContohIncrement(),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('ZIDHAN HADI IRAWAN - NOMOR ABSEN GANJIL'),
        ),
        body: Center(
          child: Text('Bilangan Kelipatan 3 Adalah : $angka', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}