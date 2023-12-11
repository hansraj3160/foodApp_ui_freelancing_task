import 'package:flutter/material.dart';

import '../components/colors.dart';
import '../components/size_config.dart';
class UserNameText extends StatefulWidget {
  const UserNameText({Key? key}) : super(key: key);

  @override
  _UserNameTextState createState() => _UserNameTextState();
}

class _UserNameTextState extends State<UserNameText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth!/14.17,                 /// 29.0
          SizeConfig.screenHeight!/23.55,                /// 29.0
          SizeConfig.screenWidth!/11.74,                 /// 35.0
          SizeConfig.screenHeight!/68.3                  /// 10.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight!/85.38 ,bottom: SizeConfig.screenHeight!/113.84),          /// 8.0 - 6.0
                    child: Text("Hi username ", style: TextStyle(fontSize: SizeConfig.screenHeight!/32.7, fontWeight: FontWeight.bold, color: Colors.black87),),  /// 23
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeConfig.screenHeight!/85.38),      /// 8.0
                    child: Container(
                      height: SizeConfig.screenHeight!/25.77,      /// 30.0
                      width: SizeConfig.screenWidth!/15.7,         /// 30.0
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/main/waving-hand.png")
                        )
                      ),
                    ),
                  )
                ],
              ),
              Text("Are you hungry?", style: TextStyle(fontSize: SizeConfig.screenHeight!/44.18, color: Colors.black54),)   /// 17
            ],
          ),
          Stack(
            children: [
          
              Container(
                  height: SizeConfig.screenWidth!/13.28,            /// 40.0
                  width: SizeConfig.screenWidth!/13.28,              /// 40.0
                  // decoration: BoxDecoration(
                  //     color: buttonColor.withOpacity(0.5),
                  //     borderRadius: BorderRadius.circular(30.0)
                  // ),
                  child:  Icon(Icons.notifications_none, color: buttonColor,)
              ),
              Positioned(
                right:0,              /// 20.0
                top:0 ,           /// 11.0
                child: Container(
                  height: 15,            /// 40.0
                  width:15,
                  decoration: BoxDecoration( color: buttonColor.withOpacity(0.5),

                    borderRadius: BorderRadius.circular(100)
                  ),
                  child:  Center(child: Text("3", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal),)))
              )
            ],
          ),
        ],
      ),
    );
  }
}
