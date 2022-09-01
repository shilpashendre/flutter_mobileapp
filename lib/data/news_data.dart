class NewsDataItem {
  final String author;
  final String content;
  final String date;
  final String id;
  final String imageUrl;
  final String readmore;
  final String time;
  final String title;
  final String url;
  NewsDataItem(
      {required this.author,
      required this.content,
      required this.date,
      required this.id,
      required this.imageUrl,
      required this.readmore,
      required this.time,
      required this.title,
      required this.url});

  factory NewsDataItem.fromJson(Map<String, dynamic> json) {
    return NewsDataItem(
      author: json['author'] ?? "",
      id: json['id'] ?? "",
      content: json['content'] ?? "",
      date: json['date'] ?? "",
      imageUrl: json['imageUrl'] ?? "",
      readmore: json['readmore'] ?? "",
      time: json['time'] ?? "",
      title: json['title'] ?? "",
      url: json['url'] ?? "",
    );
  }
}
