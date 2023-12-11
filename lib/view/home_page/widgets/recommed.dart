import 'package:flutter/material.dart';
import 'package:food_resturant_ui_task/view/home_page/components/colors.dart';

import '../../../configuration/food.dart';
import '../../../configuration/food_list.dart';
import '../components/size_config.dart';

class RecommedFoods extends StatefulWidget {
  const RecommedFoods({Key? key}) : super(key: key);

  @override
  _RecommedFoodsState createState() => _RecommedFoodsState();
}

class _RecommedFoodsState extends State<RecommedFoods> {
  List<int> fav=[];
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<Food>>(
      future: bringTheFoods(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          var foodList = snapshot.data;
          return SizedBox(
            height:225,               /// 265.0
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodList!.length,
              itemBuilder: (context, index){
                var food = foodList[index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.screenWidth!/34.25,             /// 12.0
                            SizeConfig.screenHeight!/170.75,           /// 4.0
                            SizeConfig.screenWidth!/41.1,              /// 10.0
                           0,           /// 4.0
                        ),
                        height: 225,             /// 250.0
                        width:180,              /// 200.0
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                         
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(food.foodImageName),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                                left: SizeConfig.screenWidth!/34.25,            /// 12.0
                                bottom: SizeConfig.screenHeight!/45.54,         /// 15.0
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(food.foodName, style: TextStyle(fontSize: 15, color: Colors.white)),       /// 20
                                    Text(food.foodCategory, style: TextStyle(fontSize: 14, color: Colors.white60)),  
                                    SizedBox(height: 5,), /// 14
                                    Text("\$${food.foodPrice}", style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold))     /// 18
                                  ],
                                )
                            ),
                            Positioned(
                              top: SizeConfig.screenHeight!/68.3,              /// 10.0
                              right: SizeConfig.screenWidth!/41.1,             /// 10.0
                              child:  InkWell(
                                onTap: (){
                                  setState(() {
                                    if(fav.contains(index)){
                                      fav.remove(index);
                                    }else{
                                      fav.add(index);
                                    }
                                  });
                                },
                                child: Icon(Icons.favorite,  color: fav.contains(index)?buttonColor: Colors.white)))
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        }
        else{
          return const Center();
        }
      },
    );
  }
}
