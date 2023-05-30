class PostModel {
  int ? id;
  int? userId;
  String ?title;
  String ?body;
  PostModel({
    this.body,
    this.id,
    this.title,
    this.userId,
});
factory PostModel.fromJson(Map<String , dynamic>json){
  return PostModel(
    userId: json['userId'],
    body: json['body'],
    id: json['id'],
    title: json['title']
  );
}
Map <String ,dynamic>toJson(){
  return{
    "userId":this.userId,
    "title":this.title,
    "body":this.body,
    "id":this.id
  };

}
}