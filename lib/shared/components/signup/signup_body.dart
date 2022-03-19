import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/screens/login/login_screen.dart';
import 'package:login/shared/colors.dart';
import 'package:login/shared/components/login/already_have_an_account.dart';
import 'package:login/shared/components/login/rounder_login.dart';
import 'package:login/shared/components/rounder_button.dart';
import 'package:login/shared/components/signup/or_divider.dart';

import 'signup_background.dart';

class SignUpBody extends StatelessWidget {
  final Widget child;

  const SignUpBody({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpBackgroung(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          const Text(
            'SIGNUP',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.3,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RounderInputField(
            hinText: 'Your Email',
            icon: Icons.person,
            onChange: (value) {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RounderInputField(
            hinText: 'Password',
            icon: Icons.lock,
            suffixIcon: Icons.visibility,
            onChange: (value) {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RounderButton(
            text: 'SIGNUP',
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {},
          ),
          AlertHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }),
              );
            },
          ),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcons(
                iconSrc: 'assets/icons/facebook.svg',
                press: (){},
              ),
              SocialIcons(
                iconSrc: 'assets/icons/twitter.svg',
                press: (){},
              ),
              SocialIcons(
                iconSrc: 'assets/icons/google-plus.svg',
                press: (){},
              ),
            ],
          ),
      ],
    ),
        ));
  }
}

class SocialIcons extends StatelessWidget {
  final String iconSrc;
  final VoidCallback press;
  const SocialIcons({
    Key? key,
    required this.iconSrc, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:10),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: kPrimaryLightColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 25.0,
          width: 25.0,
          color: kPrimaryColor,
        ),

      ),
    );
  }
}
