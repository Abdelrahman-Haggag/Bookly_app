import 'package:bookly/Features/home/ui/views/widgets/best_seller_item_listview.dart';
import 'package:bookly/Features/home/ui/views/widgets/book_item_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        width: 75,
                        decoration: BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fill,image: AssetImage("images/logo.png"))),
                      ),
                      SizedBox(width: 40,),
                      Icon(Icons.search,size: 25,),
                    ],
                  ),
                ),
                BookItemListview(),
                Text("Best Seller",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w700),),
                SizedBox(height: 20,),
                BestSellerItemListview()
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
