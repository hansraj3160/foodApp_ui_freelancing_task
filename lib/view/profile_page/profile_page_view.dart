import 'package:flutter/material.dart';
import 'package:food_resturant_ui_task/view/login_page/login_page_view.dart';

import '../home_page/components/size_config.dart';
import 'widgets/top_custom_shape.dart';
import 'widgets/user_sections.dart';

class ProfilePageView extends StatefulWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  _ProfilePageViewState createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Profile",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopCustomShape(),
          SizedBox(height: SizeConfig.screenHeight!/34.15,),                              /// 20.0
          UserSection(icon_name: Icons.account_circle, section_text: "My information"),
          UserSection(icon_name: Icons.credit_card, section_text: "Credit Card"),
          UserSection(icon_name: Icons.shopping_basket, section_text: "Past orders"),
          UserSection(icon_name: Icons.location_city, section_text: "Address information"),
          UserSection(icon_name: Icons.wallet_giftcard, section_text: "Coupons"),
          InkWell(
            onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPageView() ));
            },
            child: UserSection(icon_name: Icons.wallet_giftcard, section_text: "Log out"),
          )
        ],
      ),
    );
  }
}

