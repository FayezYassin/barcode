import 'package:barcode/barcode.dart';

import 'package:flutter/material.dart';
import 'package:flutter_barcode_app/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // BarcodeWidget(
          //   barcode: Barcode.aztec(), // Barcode type and settings
          //   data: 'Fayez Yassin', // Content
          //   width: 200,
          //   height: 200,
          // ),
        ],
      ),
    );
  }
}
