import 'package:flutter/material.dart';

import '../../home_page/components/colors.dart';
import '../../home_page/components/size_config.dart';
import '../../login_page/login_page_view.dart';

class TextSignIn extends StatelessWidget {
  const TextSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.screenWidth!/20.55,
          0,
          SizeConfig.screenWidth!/20.55,
          0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account? ", style: TextStyle(color: texthint),),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPageView()));
              },
              child: Text(
                "Sign in",
                style: TextStyle(
                    color: buttonColor,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.screenHeight!/45.54           /// 15.0
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}