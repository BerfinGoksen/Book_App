class BookForYou {
  String? bookId;
  String? position;
  String? name;
  String? cover;
  dynamic rating;
  String? url;

  BookForYou({this.bookId, this.position, this.name, this.cover, this.rating, this.url});

  BookForYou.fromJson(Map<String, dynamic> json) {
    bookId = json['book_id'];
    position = json['position'];
    name = json['name'];
    cover = json['cover'];
    rating = json['rating'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['book_id'] = bookId;
    data['position'] = position;
    data['name'] = name;
    data['cover'] = cover;
    data['rating'] = rating;
    data['url'] = url;
    return data;
  }
}
