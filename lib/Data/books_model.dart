class BooksModel {
  final int number;
  final String title;
  final String description;
  final String imgPath;
  final int pages;
  final String date;

  BooksModel({
    required this.number,
    required this.title,
    required this.description,
    required this.imgPath,
    required this.pages,
    required this.date,
  });

  factory BooksModel.fromJson(Map json) {
    return BooksModel(
      number: json["number"],
      title: json["title"],
      description: json["description"],
      imgPath: json['cover'],
      pages: json['pages'],
      date: json['releaseDate'],
    );
  }
}
