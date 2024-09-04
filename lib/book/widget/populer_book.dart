import 'package:flutter/material.dart';
import '../../model/book_model.dart';
import '../../model/populer_book_model.dart';
import '../../service/book_model_service.dart';

class PopulerBooks extends StatefulWidget {
  const PopulerBooks({super.key});

  @override
  State<PopulerBooks> createState() => _PopulerBooksState();
}

class _PopulerBooksState extends State<PopulerBooks> {
  List<BookModel>? bookModel = List.empty();
  PopulerBook? populerBook;

  @override
  void initState() {
    fetchItem();
    fetchPopulerBook();
    super.initState();
  }

  void fetchItem() async {
    bookModel = await BookModelService().fetchItemToService();
    setState(() {});
  }

  void fetchPopulerBook() async {
    populerBook = await BookModelService().fetchPopulerBook();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: bookModel?.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                isThreeLine: true,
                leading: Image.network(
                  '${bookModel?[index].cover}',
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox();
                  },
                ),
                title: Text(
                  '${bookModel?[index].name}',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      'Rating: ${bookModel?[index].rating} ',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Grab Now'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Learn Now'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
