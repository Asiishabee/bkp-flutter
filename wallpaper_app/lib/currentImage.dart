import 'package:flutter/material.dart';

class CurrentImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CurrentImage"),
      ),
      body: Center(child: Text("You are in current image")),
    );
  }
}
