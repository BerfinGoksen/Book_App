import 'package:flutter/material.dart';
import '../../model/populer_book_model.dart';
import '../../service/book_model_service.dart';

class BookOfTheWeek extends StatefulWidget {
  const BookOfTheWeek({super.key});

  @override
  State<BookOfTheWeek> createState() => _BookOfTheWeekState();
}

class _BookOfTheWeekState extends State<BookOfTheWeek> {
  PopulerBook? populerBook;

  @override
  void initState() {
    fetchPopulerBook();
    super.initState();
  }

  void fetchPopulerBook() async {
    populerBook = await BookModelService().fetchPopulerBook();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.white,
        child: ListTile(
          isThreeLine: true,
          leading: SizedBox(
            width: 60,
            height: 2000,
            child: Image.network(
              '${populerBook?.cover}',
              errorBuilder: (context, error, stackTrace) {
                return Container();
              },
            ),
          ),
          title: Text('${populerBook?.name}'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${populerBook?.name}'),
              Row(
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Grab Now'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Learn More'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
