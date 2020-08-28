import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class JsonParsing extends StatefulWidget {
  @override
  _JsonParsingState createState() => _JsonParsingState();
}

class _JsonParsingState extends State<JsonParsing> {
  Future data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data= getData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json Parsing"),
        ),
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: getData(),
            builder: (context,AsyncSnapshot snapshot){
              List<Widget> children;
              if(snapshot.hasData) {
                return createListView(snapshot.data, context);
              }else{
                return CircularProgressIndicator();
              }
          },),
        ),
      ),
    );
  }
}

Future getData() async {
  var data;

  String url= "https://jsonplaceholder.typicode.com/photos";
  Network network =Network(url);
  data= network.fetchData();

//  data.then((value){
//    print(value[2]['body']);
//  });
  return data;
}


Widget createListView(List data, BuildContext context){
  return Container(
    child: ListView.builder(itemCount:data.length,itemBuilder: (context,int index){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(),
          ListTile(
            title: Text("${data[index]["id"].toString()}"),
            subtitle: Text("${data[index]["title"]}"),
            leading: Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage:NetworkImage("${data[index]["url"]}",

                  ),
                ),
              ],
            )
          )
        ],
      );
    }),
  );


}

class Network{
  final  String url;

  Network(this.url);

  Future fetchData() async{
    print("$url");

    Response response =await get(Uri.encodeFull(url));

    if(response.statusCode==200){
//      print(response.body[0]);
      return json.decode(response.body);
    }else{
      print(response.statusCode);
    }
  }




}
