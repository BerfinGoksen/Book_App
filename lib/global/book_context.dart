import 'package:books_app/model/book_model.dart';

class BookContext {
  BookModel? book;
  void saveModel(BookModel? book) {
    this.book = book;
  }

  void clear() {
    book = null;
  }
}
