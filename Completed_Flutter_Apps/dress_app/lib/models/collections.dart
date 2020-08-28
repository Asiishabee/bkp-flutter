import 'package:flutter/material.dart';

class TypeCollections {
  final String id;
  final String title;
  final Color color;

  const TypeCollections({
    @required this.id,
    @required this.title,
    this.color: Colors.grey,
  });
}
