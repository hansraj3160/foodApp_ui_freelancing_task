import 'package:flutter/material.dart';

import '../../configuration/food.dart';
import '../home_page/components/size_config.dart';
import 'widgets/detail_widget.dart';
import 'widgets/food_image.dart';

class FoodDetailView extends StatefulWidget {
  Food food;
  FoodDetailView({super.key, required this.food});

  @override
  _FoodDetailViewState createState() => _FoodDetailViewState();
}

class _FoodDetailViewState extends State<FoodDetailView> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            FoodImage(food: widget.food),
            DetailWidget(food: widget.food,),
          ],
        ),
      ),
    );
  }
}