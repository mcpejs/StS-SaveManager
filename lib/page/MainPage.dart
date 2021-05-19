import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final String? title;
  MainPage({this.title});

  SizedBox _button(String display, {required VoidCallback onPressed}) =>
      SizedBox(
          width: Get.width - 30,
          height: 100,
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              display,
              style: TextStyle(fontSize: 30),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slay The Spire Save Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _button('Auto Save Load', onPressed: () => Get.toNamed('/edit')),
            SizedBox(
              height: 30,
            ),
            _button('Select Save to Load',
                onPressed: () => Get.toNamed('/edit', arguments: 'path'))
          ],
        ),
      ),
    );
  }
}
