import 'package:flutter/material.dart';

import 'widgets/bottom_bar.dart';
import 'widgets/food_list.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title : const Text("My Cart", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
        elevation: 0.3,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: const FoodListWidget(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
