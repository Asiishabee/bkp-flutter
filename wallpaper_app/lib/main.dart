import 'package:flutter/material.dart';
import 'package:wallpaper_app/currentImage.dart';

void main() {
  runApp(MaterialApp(home:WallpaperPage(),
  routes: {
    'currentImage': (context) => CurrentImage(),
  }));
}

class WallpaperPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpapers"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 8/ 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 15,
        ),
         itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('currentImage');
            },
              child: Container(color: Colors.grey));
         },
      ),
    );
  }
}

