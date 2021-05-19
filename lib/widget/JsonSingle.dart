import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sts_savemanager/controller/ManagerController.dart';

class JsonChildSingle extends StatelessWidget {
  final dynamic value;
  final int depth;
  final List<dynamic> path;
  final ManagerController controller = Get.find<ManagerController>();
  double get leftPadding => depth * 10;
  JsonChildSingle(
      {required this.depth, required this.value, required this.path});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: ListTile(
        title: Text(path.last.toString()),
        trailing: Text(value.toString()),
        onTap: () {
          controller.updateManager((json) async {
            Type type = value.runtimeType;
            dynamic newValue;
            if (value is bool) {
              newValue = !value;
            } else {
              String? result = await Get.dialog(EditDialog(
                type: type,
                title: path.last.toString(),
                before: value.toString(),
              ));
              if (result == null) return json;

              try {
                switch (type) {
                  case int:
                    newValue = int.parse(result);
                    break;
                  case double:
                    newValue = double.parse(result);
                    break;
                  default:
                    newValue = result;
                }
              } catch (e) {
                return json;
              }
            }

            switch (depth) {
              case 0:
                json[path.last] = newValue;
                break;
              case 1:
                json[path[0]][path[1]] = newValue;
                break;

              case 2:
                json[path[0]][path[1]][path[2]] = newValue;
                break;

              case 3:
                json[path[0]][path[1]][path[2]][path[3]] = type == newValue;
                break;
            }

            return json;
          });
        },
      ),
    );
  }
}

class EditDialog extends StatelessWidget {
  final Type type;
  final String title;
  final String before;
  EditDialog({required this.type, required this.title, required this.before});
  @override
  Widget build(BuildContext context) {
    TextInputType keyboardType = TextInputType.number;
    if (type == String || type == bool) keyboardType = TextInputType.text;
    return AlertDialog(
      title: Text(title),
      content: TextFormField(
        autofocus: true,
        decoration: InputDecoration(
            hintText: before, hintStyle: TextStyle(color: Colors.black26)),
        onFieldSubmitted: (value) => Get.back(result: value),
        keyboardType: keyboardType,
      ),
    );
  }
}
