import 'package:get/get.dart';
import 'package:sts_savemanager/util/SaveManager.dart';

class ManagerController extends GetxController {
  late Rx<SaveManager> manager;

  void updateManager(
      Future<Map<String, dynamic>> Function(Map<String, dynamic> json)
          newJson) async {
    String path = manager.value.path;
    var temp = SaveManager.fromJson(await newJson(manager.value.toJson()));
    temp.path = path;
    manager.value = temp;
  }

  void save() => manager.value.save();
}
