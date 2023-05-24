import 'package:flutter/material.dart';

class SecondLayout extends StatelessWidget {
  // final String kiriman;
  final List<String> data;
  const SecondLayout({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data[0]),
      ),
      body: Container(
        child: Center(
          child: Text(
            data[1],
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
