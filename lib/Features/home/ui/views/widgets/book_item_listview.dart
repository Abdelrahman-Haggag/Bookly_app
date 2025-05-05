import 'package:bookly/Features/home/ui/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookItemListview extends StatelessWidget {
  const BookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 8.0),
         child:Container(
        height: 224,
    child: ListView.builder(
    itemCount: 8,
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: BookItem(),
      );
    })))
    );
  }
}
//padding: const EdgeInsets.symmetric(
//           horizontal: 10,
//         ),
//         child: ListView.builder(
//           itemCount: categories.length,
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,