import 'package:books_app/model/book_model.dart';
import 'package:dio/dio.dart';
import '../model/book_for_you_model.dart';
import '../model/populer_book_model.dart';

abstract class IBookModelService {
  Future<List<BookModel>?> fetchItemToService();
  Future<PopulerBook?> fetchPopulerBook();
  Future<List<BookForYou>?> fetchForYou();
}

class BookModelService implements IBookModelService {
  @override
  Future<List<BookModel>?> fetchItemToService() async {
    final response = await Dio().get('http://192.168.1.34:8000/api/products');
    if (response.statusCode == 200) {
      final datas = response.data;
      if (datas is List) {
        return datas.map((e) => BookModel.fromJson(e)).toList();
      }
    }
    return null;
  }

  @override
  Future<PopulerBook?> fetchPopulerBook() async {
    final response = await Dio().get('http://192.168.1.34:8000/api/product_star');
    if (response.statusCode == 200) {
      final datas = response.data;
      if (datas is Map<String, dynamic>) {
        return PopulerBook.fromJson(datas);
      }
    }
    return null;
  }

  @override
  Future<List<BookForYou>?> fetchForYou() async {
    final response = await Dio().get('http://192.168.1.34:8000/api/product_for_you');
    if (response.statusCode == 200) {
      final forYouBook = response.data;
      if (forYouBook is List) {
        return forYouBook.map((e) => BookForYou.fromJson(e)).toList();
      }
    }
    return null;
  }
}
