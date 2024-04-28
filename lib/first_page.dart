import 'package:flutter/material.dart';

import 'package:flutter_barcode_scanner_fork/flutter_barcode_scanner.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var productBarCodeController = TextEditingController();
  Future<void> scanBarcode() async {
    String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#075E54", // Color of the barcode line
        "Cancel", // Text of the cancel button
        true, // Show flash icon
        ScanMode.DEFAULT, // Scan mode
        DefaultCamera.BACK);

    if (!mounted) return;

    setState(() {
      if (barcodeScanRes != "-1") {
        productBarCodeController.text = barcodeScanRes;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first page ..'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                scanBarcode();
                print('done ... !! : ${productBarCodeController.text}');
              },
              child: Text('barcode')),
              SizedBox(height: 300,),
              Center(child: Text('weloom :${productBarCodeController.text}'))
        ],
      ),
    );
  }
}
