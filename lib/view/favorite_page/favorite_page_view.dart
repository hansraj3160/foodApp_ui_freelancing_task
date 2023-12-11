import 'package:flutter/material.dart';

import '../../configuration/food.dart';
import '../../configuration/food_list.dart';
import '../home_page/components/size_config.dart';
import 'widgets/favorite_cart_icon.dart';
import 'widgets/favorite_icon.dart';
import 'widgets/favorite_image.dart';

class FavoritePageView extends StatefulWidget {
  const FavoritePageView({Key? key}) : super(key: key);

  @override
  _FavoritePageViewState createState() => _FavoritePageViewState();
}

class _FavoritePageViewState extends State<FavoritePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title : const Text("My Favorite", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth!/20.0, vertical: 14),   /// 20.0 - 5.0
        child: FutureBuilder<List<Food>>(
            future: bringTheFoods(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                var foodList = snapshot.data;
                return GridView.builder(
                    itemCount: 3,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (context, index) {
                      var food = foodList![index];
                      return Stack(
                        children: [
                          Container(
                              height: SizeConfig.screenHeight!/3.10,       /// 220.0
                              width: SizeConfig.screenWidth!/2.06,         /// 200.0
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 1),
                                      blurRadius: 0,
                                      color: Colors.black.withOpacity(0.1),
                                    )
                                  ]),
                              child: Stack(
                                children: [
                                  FavoriteDetail(food_image_name: food.foodImageName, food_name: food.foodName, food_category: food.foodCategory, food_price: food.foodPrice),
                                  const FavoriteCartIcon(),
                                  const FavoriteIcon(),
                                ],
                              )),
                        ],
                      );
                    }
                );
              }
              else{
                return Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight!/3.10),         /// 200.0
                  child: Column(
                    children: [
                      Center(child: Icon(Icons.favorite, color: Colors.black12, size: SizeConfig.screenHeight!/11.39,)),  /// 60.0
                      SizedBox(height: SizeConfig.screenHeight!/34.15,),                /// 20.0
                      Center(child: Text("Your Favorite Foods", style: TextStyle(color: Colors.black12, fontSize: SizeConfig.screenHeight!/34.15),))         /// 20.0
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
