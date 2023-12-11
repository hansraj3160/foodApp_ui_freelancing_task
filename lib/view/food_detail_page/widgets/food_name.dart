import 'package:flutter/material.dart';

import '../../../configuration/food.dart';
import '../../home_page/components/size_config.dart';
class FoodName extends StatefulWidget {
  Food food;
  FoodName({super.key, required this.food});

  @override
  _FoodNameState createState() => _FoodNameState();
}

class _FoodNameState extends State<FoodName> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(widget.food.foodName, style: TextStyle(color: Colors.black, fontSize:20, fontFamily: "Roboto")),  /// 30
                const Text("Category", style: TextStyle(color: Colors.black45, fontSize: 14)),
              ]
          ),
          const Spacer(),
          Text("\$${widget.food.foodPrice}", style: TextStyle(color: Colors.black87, fontSize: 20),),  /// 30
        ]
    );
  }
}
