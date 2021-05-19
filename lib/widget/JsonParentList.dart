import 'package:flutter/material.dart';
import 'package:sts_savemanager/widget/JsonTile.dart';

class JsonParentList extends StatelessWidget {
  final dynamic value;
  final int depth;
  final List<dynamic> path;

  double get leftPadding => depth * 10;
  JsonParentList(
      {required this.depth, required this.value, required this.path});
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: ExpansionTile(
        title: Text(path.last),
        children: value
            .map(
              (item) => JsonTile(
                  value: item,
                  name: item is Map
                      ? item['id'] ??
                          item['enemies'] ??
                          item['key'] ??
                          item['picked'] ??
                          item['event_name']
                      : item.toString(),
                  depth: depth + 1,
                  path: path + [i++]),
            )
            .toList()
            .cast<Widget>(),
      ),
    );
  }
}
