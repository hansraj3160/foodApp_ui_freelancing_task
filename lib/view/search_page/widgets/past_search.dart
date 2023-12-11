import 'package:flutter/material.dart';

import '../../home_page/components/size_config.dart';

class PastSearch extends StatefulWidget {
  String search_text;
  PastSearch({super.key, required this.search_text});

  @override
  _PastSearchState createState() => _PastSearchState();
}

class _PastSearchState extends State<PastSearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth!/18.68,               /// 22.0
          SizeConfig.screenHeight!/ 68.3,              /// 10.0
          SizeConfig.screenWidth!/18.68,               /// 22.0
          SizeConfig.screenHeight!/85.38               /// 8.0
      ),
      child: Row(
        children: [
          const Icon(Icons.access_time, color: Colors.black38 ),
          SizedBox(width: SizeConfig.screenWidth!/68.5,),        /// 6.0
          Text(widget.search_text, style: TextStyle(color: Colors.black54, fontSize: 16),), /// 18
          const Spacer(),
          const Icon(Icons.cancel, color: Colors.black38,),
        ],
      ),
    );
  }
}
