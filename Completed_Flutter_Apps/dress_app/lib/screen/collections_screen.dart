import 'package:dress_app/dummy_data.dart';
import 'package:dress_app/widgets/collection_item.dart';
import 'package:flutter/material.dart';

class CollectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
//        backgroundColor: Colors.white12,
        title: Text("Fashion Zone"),
      ),
     body: GridView(
          padding: const EdgeInsets.all(25),
          children: DUMMY_OutsideCOLLECTIONS
              .map(
                (colData) => CollectionItem(
              colData.id,
              colData.title,
              colData.color,
            ),
          )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 8/ 4,
            crossAxisSpacing: 30,
            mainAxisSpacing: 25,
          ),
        ),
    );
  }
}
