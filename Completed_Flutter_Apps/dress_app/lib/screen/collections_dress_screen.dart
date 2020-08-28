import 'package:dress_app/dummy_data.dart';
import 'package:flutter/material.dart';

class CollectionDressScreen extends StatelessWidget {
  static const routeName= '/collection-dress';
//  final String collectionId;
//  final String collectionTitle;
//
//  CollectionDressScreen(this.collectionId,this.collectionTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final collectionTitle = routeArgs['title'];
    final collectionId = routeArgs['id'];
    final collectionDress =DUMMY_InsideCOLLECTIONS.where((dress) {
    return dress.collections.contains(collectionId);}).toList();
    return Scaffold(
      appBar: AppBar(
       title: Text(collectionTitle),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
         return Text(collectionDress[index].title);
      },itemCount: collectionDress.length,)
    );
  }
}
