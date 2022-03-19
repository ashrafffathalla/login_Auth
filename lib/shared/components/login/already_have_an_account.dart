import 'package:flutter/material.dart';
import 'package:login/shared/colors.dart';
class AlertHaveAnAccountCheck extends StatelessWidget {
  final bool? login;
  final VoidCallback? press;

  const AlertHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login! ?  "Don't have an account ? ":"Already have an Account ? ",
          style:const  TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child:  Text(
            login! ? "Sign Up" : "Sign In",
            style:const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}