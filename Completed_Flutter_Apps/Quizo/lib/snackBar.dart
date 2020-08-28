import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar =SnackBar(content: Text("hello"),);
        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  }
}
