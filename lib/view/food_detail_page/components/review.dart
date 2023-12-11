import 'package:flutter/material.dart';

import '../../home_page/components/colors.dart';
import '../../home_page/components/size_config.dart';

class ReviewStars extends StatefulWidget {
  const ReviewStars({Key? key}) : super(key: key);

  @override
  _ReviewStarsState createState() => _ReviewStarsState();
}

class _ReviewStarsState extends State<ReviewStars> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),                /// 15.0
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.star_rounded, color: textColor,),
                Text("4.6", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize:14),),  /// 15.0
                Padding(
                  padding: EdgeInsets.only(left: 6),         /// 8.0
                  child: const Text("(52+ Reviews)", style: TextStyle(color: Colors.black26)),
                )
              ],
            ),
            Container(
              height:20,
              width: 3,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6),         /// 8.0
                  child: Icon(
                    Icons.delivery_dining_sharp,
                    color: freeDelivery,
                    size: 30,
                  ),
                ),
                Text("FREE DELIVERY", style: TextStyle(color: freeDelivery, fontWeight: FontWeight.bold, fontSize: 14),)  /// 16
              ],
            )
          ],
        )
      ),
    );
  }
}
