import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 224,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,image: AssetImage("images/Bookone.png"))),
    );
  }
}
