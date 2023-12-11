import 'package:flutter/material.dart';

import 'size_config.dart';
class FoodPart extends StatelessWidget {
  String partName;
  FoodPart({super.key, required this.partName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
     10, // 10.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(partName, style: TextStyle(fontSize: SizeConfig.screenHeight!/50.15, fontWeight: FontWeight.w800, color: Colors.black87),),  /// 20.0
          Icon(Icons.keyboard_arrow_right, color: Colors.black45, size: SizeConfig.screenHeight!/21.35,)   /// 32.0
        ],
      ),
    );
  }
}
