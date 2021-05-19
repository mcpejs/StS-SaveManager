import 'package:flutter/material.dart';
import 'package:sts_savemanager/widget/JsonTile.dart';

class JsonParentMap extends StatelessWidget {
  final String? name;
  final dynamic value;
  final int depth;
  final List<dynamic> path;

  double get leftPadding => depth * 10;
  JsonParentMap(
      {required this.name,
      required this.depth,
      required this.value,
      required this.path});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: ExpansionTile(
        title: Text(name ?? path.last.toString()),
        children: value.entries
            .map((MapEntry entry) => JsonTile(
                name: entry.key,
                value: entry.value,
                depth: depth + 1,
                path: path + [entry.key]))
            .toList()
            .cast<Widget>(),
      ),
    );
  }
}
