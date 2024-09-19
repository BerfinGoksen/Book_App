import 'package:books_app/context/book_context.dart';
import 'package:books_app/model/book_for_you_model.dart';
import 'package:books_app/model/book_model.dart';
import 'package:books_app/model/populer_book_model.dart';
import 'package:books_app/service/book_model_service.dart';
import 'package:flutter/material.dart';

class BookProvider extends ChangeNotifier {
  late final IBookModelService bookModelService;
  List<BookModel> books = [];
  List<BookForYou> bookForYou = [];
  List<PopulerBook> populerBook = [];

  BookProvider(this.bookModelService) {
    _fetch();
  }

  Future<void> _fetch() async {
    books = (await bookModelService.fetchItemToService())?.book ?? [];
    //bookForYou=(await bookModelService.fetchForYou())?bookForYou??[];
  }
}

extension on List<BookModel>? {
  get book => null;
}

void saveToLocale(BookContext bookContext) {
  bookContext.saveModel(
    BookModel(),
  );
}
