import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/shared/colors.dart';
import 'package:login/shared/components/login/background_login.dart';
import 'package:login/shared/components/login/rounder_login.dart';
import 'package:login/shared/components/login/text_field.dart';
import 'package:login/shared/components/rounder_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundLogin(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.38,
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
              isPassword: true,
              hinText: 'Password',
              icon: Icons.lock,
              suffixIcon: Icons.visibility,
              onChange: (value) {},
            ),
            RounderButton(
              text: "SIGN UP",
              color: kPrimaryColor,
              textColor:Colors.white,
              press: (){},
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text(
                  "Don't have an account ? ",
                  style: TextStyle(color: kPrimaryColor),
                ),

                GestureDetector(
                  onTap: (){},
                  child:const Text(
                    "Sign Up ",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
