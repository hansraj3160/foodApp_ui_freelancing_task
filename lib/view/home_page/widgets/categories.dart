import 'package:flutter/material.dart';
import 'package:food_resturant_ui_task/view/home_page/components/colors.dart';

import '../../../configuration/category.dart';
import '../../../configuration/food_list.dart';
import '../components/size_config.dart';

class CategoriesFood extends StatefulWidget {
  const CategoriesFood({Key? key}) : super(key: key);

  @override
  _CategoriesFoodState createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFood> {
  int selectIndex=-1;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Category>>(
      future: bringTheCategory(),
      builder: (context, snapshot){
        if(snapshot.hasData){
          var categoryList = snapshot.data;
          return SizedBox(
            height: 80,                     /// 85.0
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              scrollDirection: Axis.horizontal,
              itemCount: categoryList!.length,
              itemBuilder: (context, indeks){
                var category = categoryList[indeks];
                return InkWell(
                  onTap: (){
                    setState(() {
                      selectIndex = indeks;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              SizeConfig.screenWidth!/50.25,             /// 12.0
                              0,           /// 4.0
                              SizeConfig.screenWidth!/20.55,             /// 20.0
                              0,           /// 4.0
                          ),
                          height: SizeConfig.screenHeight!/21.18,           /// 45.0
                          width: SizeConfig.screenWidth!/12.14,              /// 45.0
                          decoration: BoxDecoration(
                           
                            image: DecorationImage(
                              image: AssetImage(category.categoryImage),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Text(category.categoryName, style: TextStyle(fontSize: SizeConfig.screenHeight!/57.54, color:selectIndex ==indeks?buttonColor: Colors.black45),),
                    ],
                  ),
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