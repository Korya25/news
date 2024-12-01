class Articlemodel {
  final String imagepath;
  final String title;
  final String description;
  final String content;

  Articlemodel(
      {required this.content,
      required this.imagepath,
      required this.title,
      required this.description});
  factory Articlemodel.form(json) {
    return Articlemodel(
      imagepath: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      content: json['content'],
    );
  }
}
