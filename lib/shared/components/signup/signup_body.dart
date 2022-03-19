import 'package:flutter/material.dart';

import 'signup_background.dart';

class SignUpBody extends StatelessWidget {
  final Widget child;

  const SignUpBody({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpBackgroung(
        child: Column(
      children: [

      ],
    ));
  }
}

