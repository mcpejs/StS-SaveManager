import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sts_savemanager/util/SaveManager.dart';
import 'package:sts_savemanager/controller/ManagerController.dart';
import 'package:sts_savemanager/widget/JsonTile.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  ManagerController controller = Get.put(ManagerController());
  @override
  void initState() {
    super.initState();
    try {
      controller.manager = Get.arguments == null
          ? SaveManager.auto().obs
          : SaveManager.manual(Get.arguments).obs;
    } catch (e) {
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Save Edit'),
          actions: [
            IconButton(
              icon: Icon(Icons.save_sharp),
              onPressed: () => controller.save(),
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: GetX<ManagerController>(
                builder: (_) => ListView(
                      children: controller.manager.value
                          .toJson()
                          .entries
                          .map((MapEntry entry) => JsonTile(
                              value: entry.value, depth: 0, path: [entry.key]))
                          .toList(),
                    )),
          ),
        ));
  }
}
