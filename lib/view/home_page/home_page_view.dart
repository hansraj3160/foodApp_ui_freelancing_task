import 'package:flutter/material.dart';
import 'components/food_part.dart';
import 'components/size_config.dart';
import 'widgets/categories.dart';
import 'widgets/discount_cart.dart';
import 'widgets/popular.dart';
import 'widgets/recommed.dart';
import 'widgets/search_food.dart';
import 'widgets/username_text.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const UserNameText(),
            const SearchFood(),
            const DiscountCard(),
            FoodPart(partName: "Categories"),
            const CategoriesFood(),
            FoodPart(partName: "Recommed"),
            const RecommedFoods(),
            FoodPart(partName: "Popular"),
            const PopularFoods(),
            SizedBox(height: 45,)
          ],
        ),
      ),
    );
  }
}
