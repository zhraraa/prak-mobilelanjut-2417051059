import 'package:flutter/material.dart';
import 'package:prakmola_annisa/column_widget.dart';
import 'package:prakmola_annisa/first_widget.dart';
import 'package:prakmola_annisa/form_widget.dart';
import 'package:prakmola_annisa/row_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Mola',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple)
      ),
      home: const FormWidget()
    );
  }

}