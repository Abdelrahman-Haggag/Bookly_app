import 'package:bookly/Features/home/ui/views/widgets/best_Seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerItemListview extends StatelessWidget {
  const BestSellerItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: ListView.builder(itemBuilder: (context,index){
        return BestSellerItem();
      },itemCount: 8,),
    );
  }
}
