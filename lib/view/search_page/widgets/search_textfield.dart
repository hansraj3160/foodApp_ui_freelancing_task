import 'package:flutter/material.dart';

import '../../home_page/components/colors.dart';
import '../../home_page/components/size_config.dart';

class SearchTextField extends StatefulWidget {
  String hint_text;
  SearchTextField({super.key, required this.hint_text});

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth!/20.55,       /// 20.0
          0,
          SizeConfig.screenWidth!/20.55,       /// 20.0
          SizeConfig.screenHeight!/85.38       /// 8.0
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 4,
                color: Colors.black.withOpacity(0.2),
              )
            ]
        ),
        child: TextField(
          style: TextStyle(color: textColor),
          cursorColor: textColor,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: Colors.black26,),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(width: 1, color: Colors.transparent),
            ) ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: widget.hint_text,
            hintStyle: const TextStyle(color: Colors.black26),
          ),
        ),
      ),
    );
  }
}
