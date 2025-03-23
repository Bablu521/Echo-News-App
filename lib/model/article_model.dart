class ArticleModel {
  final String title;
  final String? description;
  final String? image;
  final String url;
  final Source source;

  const ArticleModel({
    required this.title,
    required this.description,
    required this.image,
    required this.url,
    required this.source,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json['title'],
      description: json['description'],
      image: json['urlToImage'],
      url: json['url'],
      source: Source.fromJson(json['source'])
    );
  }
}

class Source {
  final String? name;
  Source({required this.name});

  factory Source.fromJson(json) => Source(
        name: json['name'],
      );
}
