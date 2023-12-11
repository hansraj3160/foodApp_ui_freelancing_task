import 'package:flutter/material.dart';

import '../../../configuration/food.dart';
import '../../home_page/components/colors.dart';
import '../../home_page/components/size_config.dart';
import '../components/separator.dart';
class IncreaseDecrease extends StatefulWidget {
  Food food;
  IncreaseDecrease({super.key, required this.food});

  @override
  _IncreaseDecreaseState createState() => _IncreaseDecreaseState();
}

class _IncreaseDecreaseState extends State<IncreaseDecrease> {
  int _counter = 1;

  void _increaseCart() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCart() {
    setState(() {
      if(_counter > 1){
        _counter--;
      }else{
        _counter = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(top: 14),            /// 15.0
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),   /// 10.0 - 20.0
            child: const MySeparator(color: Colors.grey,),
          ),
          Text("Total", style: TextStyle(color: Colors.black54, fontSize:18),),    /// 16
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\$${int.parse(widget.food.foodPrice )* _counter}", style: TextStyle(color: Colors.black, fontSize: 20),)  /// 25
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){_decreaseCart();},
                      child: Container(
                          height: 30,        /// 49.0
                        width: 30,           /// 49.0
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: buttonColor,
                              width: 1
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: textColor.withOpacity(0.1),
                          //borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Icon(Icons.remove, color: buttonColor),
                        ),
                      ),
                    ),
                    SizedBox(
                        width: SizeConfig.screenWidth!/6.85,           /// 60.0
                        height: SizeConfig.screenHeight!/13.94,        /// 49.0
                        child: Center(
                            child: Text("$_counter",style: TextStyle(fontSize: SizeConfig.screenHeight!/37.95, fontWeight: FontWeight.bold),),   /// 18
                        ),
                    ),
                    InkWell(
                      onTap: (){_increaseCart();},
                      child: Container(
                        height: 30,        /// 49.0
                        width: 30,           /// 49.0
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: buttonColor,
                            width: 1
                          ),
                          borderRadius: BorderRadius.circular(8),
                          color: textColor.withOpacity(0.4),
                        ),
                        child: Center(
                          child: Icon(Icons.add, color: buttonColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
