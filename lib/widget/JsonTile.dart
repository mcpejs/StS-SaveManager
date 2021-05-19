import 'package:flutter/material.dart';
import 'package:sts_savemanager/widget/JsonSingle.dart';
import 'package:sts_savemanager/widget/JsonParentMap.dart';
import 'package:sts_savemanager/widget/JsonParentList.dart';

// ignore: non_constant_identifier_names
Widget JsonTile(
    {dynamic value,
    required int depth,
    required List<dynamic> path,
    String? name}) {
  if (value is Map) {
    return JsonParentMap(
        depth: depth, value: value, path: path, name: name ?? null);
  }
  if (value is List) {
    return JsonParentList(
      depth: depth,
      value: value,
      path: path,
    );
  }
  return JsonChildSingle(
    depth: depth,
    value: value,
    path: path,
  );
}
