import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sts_savemanager/page/MainPage.dart';
import 'package:sts_savemanager/page/EditPage.dart';

Future<void> main() async {
  runApp(App());
  await Permission.storage.request();
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STS Manager',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MainPage(),
        ),
        GetPage(
            name: '/edit',
            page: () => EditPage(),
            transition: Transition.rightToLeft),
      ],
    );
  }
}
