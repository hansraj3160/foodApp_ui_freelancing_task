import 'package:flutter/material.dart';

import '../../home_page/components/colors.dart';
import '../../home_page/components/size_config.dart';
class FavoriteDetail extends StatefulWidget {
  String food_image_name;
  String food_name;
  String food_category;
  String food_price;

  FavoriteDetail({super.key, 
    required this.food_image_name,
    required this.food_name,
    required this.food_category,
    required this.food_price});

  @override
  _FavoriteDetailState createState() => _FavoriteDetailState();
}

class _FavoriteDetailState extends State<FavoriteDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height:140,           /// 110.0
          width: SizeConfig.screenWidth!/2.055,            /// 200.0
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  widget.food_image_name),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              SizedBox(height:10),
              Text(
                widget.food_name,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,          /// 20.0
                    fontWeight: FontWeight.w700),
              ),
               SizedBox(height:8),
              Text(
                widget.food_category,
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 12,         /// 16
                    fontWeight: FontWeight.w400),
              ),
               SizedBox(height:8),
              Padding(
                padding:
                EdgeInsets.only(top: SizeConfig.screenHeight!/136.6),  /// 5.0
                child: Text(
                  "\$${widget.food_price}",
                  style: TextStyle(
                      color: buttonColor,
                      fontSize:15,        /// 18
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
