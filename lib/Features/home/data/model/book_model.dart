class BookModel {
  final String id;
  final String title;
  final String subtitle;
  final String authors;
  final String image;
  final String url;

  BookModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.image,
    required this.url,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      authors: json['authors'],
      image: json['image'],
      url: json['url'],
    );
  }
}
