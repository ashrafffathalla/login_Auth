import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/screens/login/login_screen.dart';
import 'package:login/screens/signup/signup_screen.dart';
import 'package:login/shared/colors.dart';
import 'package:login/shared/components/Bbckground.dart';
import 'package:login/shared/components/rounder_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'WELCOME TO APP',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height:size.height *0.03),
          SvgPicture.asset(
              'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
           SizedBox(height:size.height *0.03),
          RounderButton(
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return const LoginScreen();}));
            },
            text: "LOGIN",
          ),
          RounderButton(
            text: "SIGN UP",
            color: kPrimaryLightColor,
            textColor:  kPrimaryColor,
            press: (){ Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SignUpScreen();
            }));},
          ),
        ],
      ),
    );
  }
}


