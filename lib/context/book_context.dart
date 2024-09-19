import 'package:books_app/model/book_model.dart';

class BookContext {
  BookModel? model;

  void saveModel(BookModel? model) {
    this.model = model;
  }

  void clear() {
    model = null;
  }
}
