import 'package:flutter/material.dart';
import '../../model/book_for_you_model.dart';
import '../../service/book_model_service.dart';
import '../../utility/u_font.dart';

class RecommendedForYou extends StatefulWidget {
  const RecommendedForYou({super.key});

  @override
  State<RecommendedForYou> createState() => _RecommendedForYouState();
}

class _RecommendedForYouState extends State<RecommendedForYou> {
  List<BookForYou>? bookForYou = List.empty();

  @override
  void initState() {
    fetchForYou();
    super.initState();
  }

  void fetchForYou() async {
    bookForYou = await BookModelService().fetchForYou();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recommended for you', style: UFont.h1Black),
        const SizedBox(height: 10),
        SizedBox(
          height: 200, // Yükseklik gereksinimlerinize göre ayarlayın
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: bookForYou?.length ?? 0,
            itemBuilder: (context, index) {
              return Container(
                width: 100, // Genişlik gereksinimlerinize göre ayarlayın
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: Image.network(
                    '${bookForYou?[index].cover}',
                    errorBuilder: (context, error, stackTrace) {
                      return Container();
                    },
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
