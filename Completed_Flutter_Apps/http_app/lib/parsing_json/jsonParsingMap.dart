import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_app/model/post.dart';
class JsonParsingMap extends StatefulWidget {
  @override
  _JsonParsingMapState createState() => _JsonParsingMapState();
}

class _JsonParsingMapState extends State<JsonParsingMap> {
  Future<PostList> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Network network =Network("https://jsonplaceholder.typicode.com/photos");
    data=network.loadPosts();
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
            future: data,
            builder: (context,AsyncSnapshot<PostList> snapshot){
              List<Post> allPosts;
              if(snapshot.hasData) {
                allPosts=snapshot.data.posts;
                return createListView(allPosts, context);
              }else{
                return CircularProgressIndicator();
              }
            },),
        ),
      ),
    );
  }

  Widget createListView(List<Post> data, BuildContext context){
    return Container(
      child: ListView.builder(itemCount:data.length,itemBuilder: (context,int index){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(),
            ListTile(
                title: Text("${data[index].title.toString()}"),
                subtitle: Text("${data[index].thumbnailUrl}"),
                leading: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:NetworkImage("${data[index].url}",

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
}

class Network{
  final  String url;

  Network(this.url);

Future<PostList> loadPosts() async{
final response = await get(Uri.encodeFull(url));
if(response.statusCode==200){
  return PostList.fromJson(json.decode(response.body));
}else{
  throw Exception("Failed to get posts");
}
}
}