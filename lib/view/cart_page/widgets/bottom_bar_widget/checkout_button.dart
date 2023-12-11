import 'package:flutter/material.dart';

import '../../../checkout_page/checkout_page_view.dart';
import '../../../home_page/components/colors.dart';
import '../../../home_page/components/size_config.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({Key? key}) : super(key: key);

  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CheckoutPageView()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width:200 ,             /// 400.0
              height:30,           /// 55.0
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                  child: Text("Checkout",
                    style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),     /// 20.0
                  )
              )
          ),
        ],
      ),
    );
  }
}
