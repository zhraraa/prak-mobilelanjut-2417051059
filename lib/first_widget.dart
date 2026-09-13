import 'package:flutter/material.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Pemrograman Mobile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/chibi.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: Text("Ayo Mulai Belajar!><"),
            )
          ]
        ),
      ),
    );
  }
}