import 'package:flutter/material.dart';

import '../../../home_page/components/colors.dart';
import '../../../home_page/components/size_config.dart';
class FoodText extends StatefulWidget {
  String foodName;
  String foodPrice;
  FoodText({super.key, required this.foodName, required this.foodPrice});

  @override
  _FoodTextState createState() => _FoodTextState();
}

class _FoodTextState extends State<FoodText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.foodName,
          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),                 /// 16
          maxLines: 2,
        ),
        SizedBox(height: 10),        /// 2.0
        Text.rich(
          TextSpan(
            text: "\$${widget.foodPrice}",
            style: TextStyle(
                fontWeight: FontWeight.w700, color: buttonColor, fontSize: 17   /// 18
            ),
            children: [
              TextSpan(
                  text: " x 1",
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
      ],
    );
  }
}
