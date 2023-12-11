import 'package:flutter/material.dart';
import 'widgets/background_image.dart';
import 'widgets/register_button.dart';
import 'widgets/text_field.dart';
import 'widgets/text_signin.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  _RegisterPageViewState createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
          child: const SingleChildScrollView(
            child: Column(
              children: [
                BackgroundImage(),
                RegisterTextField(),
                RegisterButton(),
                TextSignIn()
              ],
            ),
          ),
        )
    );
  }
}
