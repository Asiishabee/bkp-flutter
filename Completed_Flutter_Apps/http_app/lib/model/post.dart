
class PostList{
  final List<Post> posts;
  PostList({this.posts});
  factory PostList.fromJson(List<dynamic> parsedJson){
    List<Post> posts = new List<Post>();
    posts = parsedJson.map((e) => Post.fromJson(e)).toList();

    return new PostList(posts: posts); //post.userId[0]

  }


}






class Post{
  int userId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Post({this.userId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      userId: json["albumId"],
      id: json["id"],
      title: json["title"],
      url: json["url"],
      thumbnailUrl: json["thumbnailUrl"]
    );
  }
}