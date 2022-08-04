
class PostModel {
  int userId;
  int id;
  String title;
  String body;

  PostModel(
    {
      required this.userId,
      required this.id,
      required this.title,
      required this.body
    }
  );

 

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
      body: map['body'],
    );
  }
}
