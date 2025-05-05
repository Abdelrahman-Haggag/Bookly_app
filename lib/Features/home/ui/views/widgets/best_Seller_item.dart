import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: Image(height: 105,width: 70,fit: BoxFit.fill,image: AssetImage("images/Bookone.png")),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("The Jungle Book",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400),),
            Text("Rudyard Kipling",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("19.99 €",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w700)),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Text("4.8",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500)),
                    Text("(2390)",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400)),
                  ],
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}
