import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/model/movie.dart';

class MovieListView extends StatelessWidget {

  final List<Movie> movieList = Movie.getMovies();

//  final List movies = [
//    "Titanic",
//    "Blade Runner",
//    "Rambo",
//    "The Avengers",
//    "Avatar",
//    "I Am Legend",
//    "300",
//    "Interstellar",
//    "Game of Thrones",
//    "Vikings",
//    "The Wolf of Wall Street"
//  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade900,
        title: Text("Movies"),
      ),
      body: ListView.builder(itemCount:movieList.length,
          itemBuilder: (BuildContext context,int index){
        return Stack(
            children:[
              movieCard(movieList[index], context),
              Positioned(
                top: 10,
                  child: movieImage(movieList[index].images[1])),

            ]);
//        return Card(
//          elevation: 5,
//          child: ListTile(
//            leading: CircleAvatar(
//              child: Container(
//                width: 200,
//                height: 200,
//                decoration: BoxDecoration(
//                  image: DecorationImage(image: NetworkImage(movieList[index].images[0]),
//                  fit: BoxFit.cover),
//                  borderRadius: BorderRadius.circular(13)
//                ),
//                child: null,
//              )
//            ),
//            trailing: Text("..."),
//            title: Text(movieList[index].title),
//               onTap: (){
//              Navigator.push(context, MaterialPageRoute(
//                  builder: (context)=> MovieListViewDetails(movieName:movieList.elementAt(index).title,
//                  movie: movieList[index],)));
//               },
////            onTap: ()=> print(movies.elementAt(index)),
//          subtitle: Text("${movieList[0].title}"),
//          ),
//        );
      }),
    );
  }

   Widget movieCard(Movie movie,BuildContext context){
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120,
          child: Card(
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.only(top:8.0,left: 55.0,bottom: 8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:[
                      Flexible(
                        child: Text(movie.title ,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                        ),),
                      ),
                      Text(movie.released,style: mainTextStyle(),)
                    ]),
                    Row(mainAxisAlignment:MainAxisAlignment.spaceAround,
                      children: [
                      Text(movie.rated,style: mainTextStyle(),),
                      Text(movie.runtime,style: mainTextStyle(),),
                        Text(movie.director,style: mainTextStyle(),)
                    ],)

                  ],

                ),
              ),
            ),
          ),
      ),
      onTap: ()=>{
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=> MovieListViewDetails(movieName:movie.title, movie: movie)))
      },
    );

   }

   TextStyle mainTextStyle(){
    return TextStyle(
      fontSize: 13,
      color: Colors.grey,
    );
   }

   Widget movieImage(String imageUrl){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl ??  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"),
            fit: BoxFit.cover)
      ),
    );
   }
}

class MovieListViewDetails extends StatelessWidget {

  final String movieName;
  final Movie movie;

  MovieListViewDetails({this.movieName,this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text("MoviePage"),
      ),
body: ListView(
  children: [
MovieDetails(thumbnail: movie.images[0]),
    MovieDetailsPoster(movie: movie),
    HorizontalLine(),
    MovieDetailsCast(movie),
    HorizontalLine(),
    MovieExtraPosters(posters: movie.images,)
  ],
),
//      body: Center(
//        child: Container(
//          child: RaisedButton(
//            child: Text("Go Back ${movie.title}"),
//            onPressed: (){
//             Navigator.pop(context);
//            },
//          ),
//        ),
//      ),
    );
  }
}

class MovieDetails extends StatelessWidget {
  final String thumbnail;

  MovieDetails({this.thumbnail});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image:NetworkImage(thumbnail),
                fit: BoxFit.cover)
              ),
            ),
            Icon(Icons.play_circle_outline,color: Colors.white,size: 50,)
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)
          ),
          height: 80,
        )
      ],
    );
  }
}

class MovieDetailsPoster extends StatelessWidget {
  final Movie movie;
  MovieDetailsPoster({this.movie});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Row(
        children: [
          MoviePoster(poster: movie.images[2].toString(),),
          SizedBox(width: 14),
          Expanded(
          child: MovieDetailsHeader(movie:movie),
          ),
        ],
      ),
    );
  }
}

class MoviePoster extends StatelessWidget {
  final String poster;
  MoviePoster({this.poster, Movie movie});
  @override
  Widget build(BuildContext context) {
    var borderRadius= BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
          width: MediaQuery.of(context).size.width /4,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(poster),
            fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;

  MovieDetailsHeader({this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${movie.year} , ${movie.genre}".toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.indigo
        ),),
        Text(movie.title,style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),),
        Text.rich(TextSpan(
          style: TextStyle(
            fontSize: 12,fontWeight: FontWeight.w300,
          ),children: <TextSpan>[
            TextSpan(
              text: movie.plot,
            )
        ]
        ))
      ],
    );
  }
}


class MovieDetailsCast extends StatelessWidget {
  final Movie movie;

  MovieDetailsCast(this.movie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Column(
        children: [
          MovieField(field: "Cast", value: movie.actors),
          MovieField(field:"Director",value:movie.director),
          MovieField(field: "Awards:",value: movie.awards,),

        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  const MovieField({Key key, this.field, this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text("$field:",style: TextStyle(
              color: Colors.black38,
              fontSize:10, fontWeight: FontWeight.w300,
            ),),
        ),
        Text(value,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12,color: Colors.black),)
      ],
    );
  }
}

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
      child: Container(
        height: 0.5,
        color: Colors.grey,
      ),
    );
  }
}


class MovieExtraPosters extends StatelessWidget {
  final List<String> posters;

  const MovieExtraPosters({Key key, this.posters}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Text("More Movie Posters".toUpperCase(),
          style: TextStyle(
            fontSize: 14,
            color: Colors.black26
          ),),
        ),
       Container(
         height: 170,
         child: Padding(
           padding: const EdgeInsets.symmetric(vertical:16.0),
           child: ListView.separated(scrollDirection: Axis.horizontal,
               itemBuilder: (context,index)=> ClipRRect(
                 borderRadius: BorderRadius.all(Radius.circular(12)),
                 child: Container(
                   width:MediaQuery.of(context).size.width/4,
                   height: 160,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage(posters[index]),
                       fit: BoxFit.cover,
                     )
                   ),
                 ),
               ),
               separatorBuilder: (context,index)=>SizedBox(width: 8,),
               itemCount: posters.length),
         ),
       )
      ],
    );
  }
}


