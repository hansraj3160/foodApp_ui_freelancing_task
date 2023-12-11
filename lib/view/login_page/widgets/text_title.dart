import 'package:flutter/material.dart';

import '../../home_page/components/size_config.dart';
class TextTitle extends StatelessWidget {
  String title;
  TextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(title, style: TextStyle(color: Colors.white, fontSize: SizeConfig.screenHeight!/22.77, fontWeight: FontWeight.bold),),
    );
  }
}
