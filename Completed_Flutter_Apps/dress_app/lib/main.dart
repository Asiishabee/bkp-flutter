import 'package:dress_app/screen/collections_dress_screen.dart';
import 'package:dress_app/screen/collections_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fashion Zone",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
          // ignore: deprecated_member_use
          title: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          )
        )
      ),
//      home: CollectionsScreen(),
      routes: {
        '/': (ctx)=> CollectionsScreen(),
        CollectionDressScreen.routeName: (ctx) => CollectionDressScreen(),
      },
    );
  }
}



