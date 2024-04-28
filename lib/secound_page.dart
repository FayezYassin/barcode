import 'package:flutter/material.dart';
class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        print('خروج من الزر الفوقاني');
        return true;
      },
      child: Scaffold(
        appBar: AppBar(title: Text('secound page ..'),),
        body: Column(children: [
          Center(child: TextButton(onPressed: (){
          Navigator.pop(context);
          }, child: Text('data')),)
        ],),
      ),
    );
  }
}