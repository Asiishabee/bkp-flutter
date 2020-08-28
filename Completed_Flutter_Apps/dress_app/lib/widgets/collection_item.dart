import 'package:dress_app/screen/collections_dress_screen.dart';
import 'package:flutter/material.dart';
import 'package:dress_app/dummy_data.dart';

class CollectionItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CollectionItem(this.id, this.title, this.color);

  void selectCollection(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/collection-dress',
    arguments: {
      'id':id,
      'title': title,
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () => selectCollection(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}